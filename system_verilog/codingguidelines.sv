System Verilog Coding guidelines

General Coding Style
Although bad coding style does not stop your code from working, it does make it harder for others to understand and makes 
it more difficult to maintain. Take pride in writing well-ordered and uniformly formatted code.

1.1 Guideline: Indent your code with spaces
Use a consistent number of spaces to indent your code every time you start a new nested block, 2 or 3 spaces is recommended. Do not use tabs since the tab settings vary in different editors and viewers and your formatting may not look as you intended. Many text editors have an indenting mode that automatically replaces tabs with a defined number of spaces.

1.2 Guideline: Only one statement per line
Only have one declaration or statement per line. This makes the code clearer and easier to understand and debug.

Recommended:

// Variable definition:
logic enable;
logic completed;
logic in_progress;
 
// Statements:
// (See next Guideline for the use of begin-end pairs
// with conditional statements)
//
if(enable==0) 
  in_progress=1; 
else 
  in_progress=0;

Not Recommended:

// Variable definition:
logic enable, completed, in_progress;
 
// Statements:
if(enable==0)in_progress=1;else in_progress=0;

1.3 Guideline: Use a begin-end pair to bracket conditional statements
This helps make it clear where the conditional code begins and where it ends. Without a begin-end pair, only the first line after the conditional statement is executed conditionally and this is a common source of errors.

Recommended:

// Both statements executed conditionally:
if(i>0)begin
  count= current_count;
  target= current_target;
end
Not Recommended:

if(i>0)
  count= current_count;
  target= current_target;// This statement is executed unconditionally

1.4 Guideline: Use parenthesis in Boolean conditions
This makes the code easier to read and avoids mistakes due to operator precedence issues.

Recommended:

// Boolean or conditional expression
if((A==B)&&(B>(C*2))||(B>((D**2)+1)))begin
  ...
end
Not Recommended:

// Boolean or conditional expression
if(A==B&& B> C*2|| B> D**2+1)begin
  ...
end

1.5 Guideline: Keep your code simple
Avoid writing tricky and hard to understand code, keep it simple so that it is clear what it does and 
how so that others can quickly understand it in case a modification is required.
  
1.6 Guideline: Keep your lines to a reasonable length
Long lines are difficult to read and understand, especially if you need to scroll the editor to the right 
to read the end of the line. As a guideline, keep your line length to around 80 characters, break the line and indent at logical places.

Recommended:

function bit do_compare(uvm_object rhs, uvm_comparer comparer);
  mbus_seq_item rhs_;
 
 if(!$cast(rhs_, rhs))begin
      `uvm_error("do_compare","cast failed, check type compatibility")
     return0;
 end
  do_compare=super.do_compare(rhs, comparer)&&(MADDR== rhs_.MADDR)&&(MWDATA== rhs_.MWDATA)&&(MREAD== rhs_.MREAD)&&(MOPCODE== rhs_.MOPCODE)&&(MPHASE== rhs_.MPHASE)&&(MRESP== rhs_.MRESP)&& (MRDATA== rhs_.MRDATA);
endfunction: do_compare
  
Not Recommended:
  
function bit do_compare(uvm_object rhs, uvm_comparer comparer);
  mbus_seq_item rhs_;
 
 if(!$cast(rhs_, rhs))begin
      `uvm_error("do_compare","cast failed, check type compatibility")
     return0;
 end
  do_compare=super.do_compare(rhs, comparer)&&
              (MADDR== rhs_.MADDR)&&
              (MWDATA== rhs_.MWDATA)&&
              (MREAD== rhs_.MREAD)&&
              (MOPCODE== rhs_.MOPCODE)&&
              (MPHASE== rhs_.MPHASE)&&
              (MRESP== rhs_.MRESP)&&
              (MRDATA== rhs_.MRDATA);
endfunction: do_compare

 1.7 Guideline: Use lowercase for names, using underscores to separate fields
This makes it clearer what the name is, as opposed to other naming styles such as CamelCase which are harder to read.

Recommended:
axi_fabric_scoreboard_error
   
Not Recommended:
AxiFabricScoreboardError
   
1.8 Guideline: Use prefix_ and _postfix to delineate name types
Use prefixes and postfixes for name types to help differentiate between variables. Pre and post fixes 
for some common variable types are summarized in the following table:

prefix/postfix	Purpose
_t	Used for a type created via a typedef
_e	Used to indicate a enumerated type
_h	Used for a class handle
_m	Used for a protected class member (See guideline 2.2)
_cfg	Used for a configuration object handle
_ap	Used for an analysis port handle
_group	Used for a covergroup handle

1.9 Guideline: Use a descriptive typedef when declaring a variable instead of a built-in type
This makes the code clearer and easier to understand as well as easier to maintain. An exception is when the built-in type keyword best describes the purpose of the variable's type.

// Descriptive typedef for a 24 bit audio sample:
typedef bit[23:0] audio_sample_t;
1.10 Guideline: Use the end label for classes, functions, tasks, and packages
This forces the compiler to check that the name of the item matches the end label which can trap cut and paste errors. It is also useful to a person reading the code.

// Using end labels
package my_pkg;
 
 //...
 class my_class;
 
   // ...
   functionvoid my_function();
   //...
   endfunction: my_function
 
   task my_task;
   // ...
   endtask: my_task
 
 endclass: my_class
 
endpackage: my_pkg
  
1.11 Guideline: Comment the intent of your code
Add comments to define the intent of your code, don't rely on the users interpretation. 
For instance, each method in a class should have a comment block that specifies its input arguments, its function and its return arguments.
This principle can be extended to automatically generate html documentation for your code using documentation tools such as Natural Docs.

SystemVerilog Do's
  Use a consistent coding style - see guidelines
  Use a descriptive typedef for variables
  Use an end label for methods, classes and packages
  Use `includes to compile classes into packages
  Define classes within packages
  Define one class per file
  Only `include a file in one package
  Import packages to reference their contents
  Check that $cast() calls complete successfully
  Check that randomize() calls complete successfully
  Use if rather than assert to check the status of method calls
  Wrap covergroups in class objects
  Only sample covergroups using the sample() method
  Label covergroup coverpoints and crosses

SystemVerilog Don'ts
  Avoid `including the same class in multiple locations
  Avoid placing code in $unit
  Avoid using associative arrays with a wildcard index
  Avoid using #0 delays
  Don't rely on static initialization order
