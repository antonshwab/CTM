declare

% a

C={NewCell 0}

thread I in
   I = @C
   C := I + 1
end

thread J in
   J = @C
   C := J + 1
end

{Browse @C} % маловероятно, что эти потоки успеют перемешаться, поэтому вряд ли
            %  результатом будет 1

% b
declare
Z={NewCell 0}

thread K in
   K = @Z
   {Delay 1000}
   Z := K + 1
end

thread L in
   L = @Z
   Z := L + 1
end

{Delay 1000}
{Browse @Z}

