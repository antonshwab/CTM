% Перевод try s1 finally s2 end в try/catch конструкцию так, чтобы s1 и s2 встречались только по одному разу.
% Если в s1 встречает эксепшен, то он бробрасывается дальше.

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

%%%%%

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
      
      



