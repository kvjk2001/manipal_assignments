Files and Directories
The following guidelines concern best practices for SystemVerilog files and directories.

File Naming
3.1 Guideline: Use lower case for file and directory names
Lower case names are easier to type.

3.2 Guideline: Use .sv extensions for compile files, .svh for `include files
The convention of using the .sv extension for files that are compiled and .svh for files that get included makes it easier to sort through files in a directory and also to write compilation scripts.

For instance, a package definition would have a .sv extension, but would reference `included .svh files:

3.3 Guideline: `include .svh class files should only contain one class and be named after that class
This makes it easier to maintain the code, since it is obvious where the code is for each class.

3.4 Guideline: Use descriptive names that reflect functionality
File names should match their content. The names should be descriptive and use postfixes to help describe the intent - e.g. _pkg, _env, _agent, etc.

`include versus import
3.5 Rule: Only use `include to include a file in one place
The `include construct should only be used to include a file in just one place. `include is typically used to include .svh files when creating a package file.

If you need to reference a type or other definition, then use 'import' to bring the definition into scope. Do not use `include. The reason for this is that type definitions are scope specific.

A type defined in two scopes using the same `include file are not recognized as being the same. If the type is defined in one place, inside a package, then it can be properly referenced by importing that package.

An exception to this would be a macro definition file such as the 'uvm_macros.svh' file.

Directory Names
Testbenches are constructed of SystemVerilog UVM code organized as packages, collections of verification IP organized as packages and a description of the hardware to be tested. Other files such as C models and documentation may also be required. Packages should be organized in a hierarchy.

3.6 Guideline: Each package should have its own directory
Each package should exist in its own directory. Each of these package directories should have one file that gets compiled - a file with the extension .sv

Each package should have at most one file that may be included in other code. This file may define macros.

abc_pkg.sv
abc_macros.svh
For a complex package (such as a UVC) that may contain tests, examples and documentation, create subdirectories:

abc_pkg/examples
abc_pkg/docs
abc_pkg/tests
abc_pkg/src/abc_pkg.sv
