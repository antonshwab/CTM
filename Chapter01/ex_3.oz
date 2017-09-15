declare Pascal AddList ShiftLeft ShiftRight
fun {Pascal N}
   if N==1 then [1]
   else
      {AddList {ShiftLeft {Pascal N-1}} {ShiftRight {Pascal N-1}}}
   end
end

% Базовый случай {Pascal 1} => [1] - верен. Предположим, что {Pascal N-1} - верно.
% Рассмотрим {Pascal N}. Во время вызова вычисляется 
% {AddList {ShiftLeft {Pascal N-1}} {ShiftRight {Pascal N-1}}}
% Отсюда следует, что если операции ShiftLeft, ShiftRight и AddList верные, то
% {Pascal N} тоже верен.


fun {ShiftLeft L}
   case L of H|T then
      H|{ShiftLeft T}
   else [0] end
end

fun {Shiftright L} 0|L end

fun {AddList L1 L2}
   case L1 of H1|T1 then
      case L2 of H2|T2 then
         H1+H2|{AddList T1 T2}
      end
   else nil end
end