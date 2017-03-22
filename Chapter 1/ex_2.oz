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
