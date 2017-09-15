declare GenericPascal OpList ShiftLeft ShiftRight Add FastPascal in
fun {GenericPascal Op N}
   if N==1 then [1]
   else L in
      L={GenericPascal Op N-1}
      {OpList Op {ShiftLeft L} {ShiftRight L}}
   end
end

fun {OpList Op L1 L2}
   case L1 of H1|T1 then
      case L2 of H2|T2 then
         {Op H1 H2}|{OpList Op T1 T2}
      end
   else nil end
end

fun {ShiftLeft L}
   case L of H|T then
      H|{ShiftLeft T}
   else [0] end
end

fun {ShiftRight L} 0|L end

fun {Add X Y} X+Y end

fun {FastPascal N} {GenericPascal Add N} end

{Browse {FastPascal 5}}

declare
fun {Xor X Y} if X==Y then 0 else 1 end end

{Browse {GenericPascal Xor 5}}

declare
fun {Mul X Y} X * Y end

% везде 0, кроме первого ряда, потому ноль появляется впервые при вычислении второго ряда:
% [0 * 1, 1 * 0] и так далее, везде будет ноль
for I in 1..10 do {Browse {GenericPascal Mul I}} end

% например, здесь 0 не будет
declare
fun {Mul1 X Y} (X+1)*(Y+1) end
for I in 1..10 do {Browse {GenericPascal Mul1 I}} end

