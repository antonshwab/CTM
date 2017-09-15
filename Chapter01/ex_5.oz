declare
fun lazy {Ints N}
   N|{Ints N+1}
end


declare SumList
fun {SumList L}
   case L of X|L1 then X+{SumList L1}
   else 0 end
end


% Call {SumList {Ints 0}} is not good idea. Because X|L1 будет форсить ленивую
% коллекцию и на каждый вызов будет обеспичивать X и L1, т.е. SumList не доберется до else-ветки.