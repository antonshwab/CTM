% % The memory store as used in the exercises
declare
fun {NewStore}
   D={NewDictionary}
   C={NewCell 0}
   proc {Put K X}
      if {Not {Dictionary.member D K}} then
         C:=@C+1
      end
      D.K:=X
   end
   fun {Get K} D.K end
   fun {Size} @C end
in
   storeobject(put:Put get:Get size:Size)
end
proc {Put S K X} {S.put K X} end
fun {Get S K} {S.get K} end
fun {Size S} {S.size} end

%%


%% (a)

local Store in
   Store = {NewStore}
   {Put Store 1 [1]}

   fun {FasterPascal N}
      local Aux AddList ShiftLeft ShiftRight in
         fun {AddList L1 L2}
            case L1 of H1|T1 then
               case L2 of H2|T2 then
                  H1+H2|{AddList T1 T2}
               end
            else nil end
         end
         
         fun {ShiftLeft L}
            case L of H|T then
               H|{ShiftLeft T}
            else [0] end
         end
         
         fun {ShiftRight L} 0|L end
                        
         fun {Aux CurRowNumber}
            if N > CurRowNumber
            then 
               local CurRow NextRow NextRowNumber in
                  CurRow = {Get Store CurRowNumber}
                  NextRow = {AddList {ShiftLeft CurRow} {ShiftRight CurRow}}
                  NextRowNumber = CurRowNumber + 1
                  {Put Store NextRowNumber NextRow}
                  {Aux NextRowNumber}
               end
            else {Get Store N}
            end
         end
         
         {Aux {Size Store}}  
      end
   end
end
{Browse {FasterPascal 2}}
{Browse {FasterPascal 10}}
{Browse {FasterPascal 6}}

% % b, c

% fun {NewMyStore}
%    MyStoreCell = {NewCell nil}
%    StoreCellSize = {NewCell 0}

%    fun {MyGet Index}
%       local Aux in
%          fun {Aux Store}
%             case Store of I|V|RestStore then
%                if Index == I then V
%                else {Aux RestStore}
%                end
%             end
%          end
%          {Aux @MyStoreCell}
%       end
%    end

%    fun {MyPut Index Value}
%       local Aux in
%          fun {Aux Store}
%             case Store
%             of nil then Index|Value|nil
%             [] I|V|RestStore then
%                if Index == I
%                then I|Value|RestStore
%                else I|V|{Aux RestStore} end
%             end
%          end
%          MyStoreCell := {Aux @MyStoreCell}
%          StoreCellSize := @StoreCellSize + 1
%       end
%    end
   
%    fun {MySize}
%          @StoreCellSize
%    end
   
% in   store(get:MyGet put:MyPut size:MySize)
% end

% local Store in
%    Store = {NewMyStore}
%    {Store.put 1 [1]}

%    fun {FasterPascal2 N}
%       local Aux AddList ShiftLeft ShiftRight in
%          fun {AddList L1 L2}
%             case L1 of H1|T1 then
%                case L2 of H2|T2 then
%                   H1+H2|{AddList T1 T2}
%                end
%             else nil end
%          end
         
%          fun {ShiftLeft L}
%             case L of H|T then
%                H|{ShiftLeft T}
%             else [0] end
%          end
         
%          fun {ShiftRight L} 0|L end
                        
%          fun {Aux CurRowNumber}
%             if N > CurRowNumber
%             then 
%                local CurRow NextRow NextRowNumber in
%                   CurRow = {Store.get CurRowNumber}
%                   NextRow = {AddList {ShiftLeft CurRow} {ShiftRight CurRow}}
%                   NextRowNumber = CurRowNumber + 1
%                   {Store.put NextRowNumber NextRow}
%                   {Aux NextRowNumber}
%                end
%             else {Store.get Store N}
%             end
%          end
         
%          {Aux {Store.size}}  
%       end
%    end
% end
% {Browse {FasterPascal2 2}}
% {Browse {FasterPascal2 10}}
% {Browse {FasterPascal2 6}}

