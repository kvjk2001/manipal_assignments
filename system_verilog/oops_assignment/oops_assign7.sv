/************************************************************************
Author: Mirafra Technologies Pvt Limited
        By Priya Ananthakrishnan
Filename:	oops_assign7.sv  
Date:   	30th May 2024
Version:	1.0
Description: Concept for handle assignments legal and illegal 
***************************************************************************/

class base_class ; // base_class
class derived_class1 extends base_class;
class derived_class2 extends derived_class1;
class derived_class3 extends derived_class1;
//
module class_concepts;
initial
  begin
    //ADDCODE: create the instances and object for all the classes
    base_class = derived_class1;
    derived_class1 = base_class;
    derived_class2 = derived_class1;
    derived_class1 = derived_class2;
    derived_class3 = derived_class1;
  end
endmodule

