% 2.a, 2.b

declare
fun {Fact N}
   if N==1 then 1
   else N*{Fact N-1} end
end

fun {PartialFact N ToValue}
   if N==ToValue then ToValue
   else N * {PartialFact N-1 ToValue} end
   
end

fun {FastComb N R}
   if R == 0 then 1
   else Numerator Denominator K in
	  K = if R > (N div 2) then N - R else R end
	  Numerator = {PartialFact N N-K+1}
	  Denominator = {Fact K}
	  Numerator div Denominator
   end
end

{Browse {FastComb 10 3}} % => 120


declare Pascal AddList ShiftLeft ShiftRight
fun {Pascal N}
   if N==1 then [1]
   else
      {AddList {ShiftLeft {Pascal N-1}} {ShiftRight {Pascal N-1}}}
   end
end


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

       