Guidelines to follow when you write class in System Verilog
Class Names and Members

2.1 Guideline: Name classes after the functionality they encapsulate
Use classes to encapsulate related functionality. Name the class after the functionality, 
for instance a scoreboard for an Ethernet router would be named "router_scoreboard".

2.2 Guideline: Private class members should have a m_ prefix
Any member that is meant to be private should be named with a 'm_' prefix, and should be made local or protected. 
Any member that will be randomized should not be local or protected.

2.3 Guideline: Declare class methods using extern
This means that the class body contains the method prototypes and so users only have to look at 
this section of the class definition to understand its functionality.

// Descriptive typedefs:
typedef logic[31:0] raw_sample_t;
typedef logic[15:0] processed_sample_t
 
// Class definition illustrating the use of externally defined methods:
class audio_compress;
 
rand int iteration_limit;
rand bit valid;
rand raw_sample_t raw_audio_sample;
rand processed_sample_t processed_sample;
 
// function: new
// Constructor - initializes valid
extern function new();
 
// function: compress_sample
// Applies compression algorithm to raw sample
// inputs: none
// returns: void
extern function void compress_sample();
 
// function: set_new_sample
// Set a new raw sample value
// inputs:
//   raw_sample_t new_sample
// returns: void
extern function void set_new_sample(raw_sample_t new_sample);
 
endclass: audio_compress
 
function audio_compress::new();
  valid=0;
  iteration_limit= $bits(processed_sample_t);
endfunction
 
function void audio_compress::compress_sample();
 for(int i=0; i< iteration_limit; i++)begin
    processed_sample[i]= raw_audio_sample[((i*2)-1):(i*2)];
 end
  valid=1;
endfunction: compress_sample
 
function void audio_compress:set_new_sample(raw_sample_t new_sample);
  raw_audio_sample= new_sample;
  valid=0;
endfunction: set_new_sample
