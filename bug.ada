```ada
procedure Example is
   type My_Array is array (1..10) of Integer;
   MyArr : My_Array := (1,2,3,4,5,6,7,8,9,10);
   subtype Positive is Integer range 1..Integer'Last;
   function Get_Value (Index : Positive) return Integer is
   begin
      return MyArr(Index);
   exception
      when Constraint_Error => return 0; -- Handle out-of-bounds
   end Get_Value;
begin
   for I in MyArr'Range loop
      Ada.Text_IO.Put_Line(Integer'Image(Get_Value(I)));
   end loop;
   for J in 11..20 loop
      Ada.Text_IO.Put_Line(Integer'Image(Get_Value(J))); -- This will cause Constraint_Error
   end loop;
end Example;
```