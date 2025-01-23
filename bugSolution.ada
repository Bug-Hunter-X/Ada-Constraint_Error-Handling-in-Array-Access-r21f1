```ada
procedure Example is
   type My_Array is array (1..10) of Integer;
   MyArr : My_Array := (1,2,3,4,5,6,7,8,9,10);
   subtype Positive is Integer range 1..Integer'Last;
   function Get_Value (Index : Positive) return Integer is
      Result : Integer;
   begin
      if Index in MyArr'Range then
         Result := MyArr(Index);
      else
         Result := 0; -- Handle out-of-bounds gracefully
      end if;
      return Result;
   end Get_Value;
begin
   for I in MyArr'Range loop
      Ada.Text_IO.Put_Line(Integer'Image(Get_Value(I)));
   end loop;
   for J in 11..20 loop
      Ada.Text_IO.Put_Line(Integer'Image(Get_Value(J))); -- Now handles this gracefully
   end loop;
end Example;
```