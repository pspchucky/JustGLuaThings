function FireworkPrint( txt )
    local murica = {Color(255,0,0), Color(255,255,255), Color(0,0,255)} //awh yeah 🎆
    local letters = string.Explode( "", txt )
    local ColorIndx = 1 //Fuckin lua
    
escape_character = { //Only worry about characters that add blank spacing
  [" "] = function (x) Msg(" ") end,
  ["\n"] = function (x) Msg("\n") end,
  ["\r"] = function (x) Msg("\r") end,
  ["\t"] = function (x) Msg("\t") end,
  --["\b"] = function (x) Msg("\b") end, -- Lua's way of handling \b IS SO WEIRD | Try fixing this at your discretion.
  --["\f"] = function (x) Msg("\f") end, -- This prints '♀' O.o
  --["\v"] = function (x) Msg("\v") end, -- This prints '♂' o.O
}
    for k,v in pairs(letters) do
        if escape_character[v] != nil then //If it's nil, then it's not an escape character *at least I accounted for*
            escape_character[v]("") //Executing function in table
        else
            MsgC(murica[ColorIndx], v)
                if ColorIndx == 3 then
                    ColorIndx = 1 //Damn lua and tables starting at 1, otherwise I'd use %
                else
                    ColorIndx = ColorIndx + 1 //No Var++ ? :(
                end 
        end
    end
end
