local X in
   X = 23
   local X in
      X=44
   end
   {Browse X} % browse operation show the x which is placed in same lexical scope (X = 23)
end

local X in
   X={NewCell 23}
   X:=44
   {Browse @X} % show 44, because := reassingment cell X to value 44
end
