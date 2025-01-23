# Ada Constraint_Error Handling
This example demonstrates a common issue in Ada programming: handling `Constraint_Error` exceptions that can arise when accessing arrays outside their defined bounds.  The `Get_Value` function showcases a robust way to mitigate this problem.

The `bug.ada` file contains code that intentionally causes `Constraint_Error` exceptions. The `bugSolution.ada` file provides a corrected version with proper exception handling.