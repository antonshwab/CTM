% 
declare WasEx in
try
   try
      {Browse 'Sequence of operations. Inside may be exception or may be not'}
      %raise
      %   WasEx = false
      %   some_exception_in_sequence
      %end
   catch X then
      raise X end
   end
   
   raise
      WasEx = true
      final_exception
   end
   
catch X then
   {Browse 'Final instruction'}
   if WasEx == false
   then
      {Browse '1'}
      raise X end
   else
      {Browse '2'}
   end
end

declare WasEx in
try
   try
      {Browse 'Sequence of operations. Inside may be exception or may be not'}
      raise
         WasEx = false
         some_exception_in_sequence
      end
   catch X then
      raise X end
   end
   
   raise
      WasEx = true
      final_exception
   end
   
catch X then
   {Browse 'Final instruction'}
   if WasEx == false
   then
      {Browse '1'}
      raise X end
   else
      {Browse '2'}
   end
end
      
      



