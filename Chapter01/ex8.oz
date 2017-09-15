declare
local Acc in
   Acc={NewCell 0}
   fun {Write N}
      Acc:=@Acc+N
      @Acc
   end
end

fun {Accumulate N}
   {Write N}
end

{Browse {Accumulate 5}}
{Browse {Accumulate 100}}
{Browse {Accumulate 45}}

% or

declare
local Acc = {NewCell 0} in
   fun {Accumulate N}
      Acc:=@Acc+N
      @Acc
   end
end

{Browse {Accumulate 5}}
{Browse {Accumulate 100}}
{Browse {Accumulate 45}}
