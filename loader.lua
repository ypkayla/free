if not game:IsLoaded() then
    game.Loaded:Wait()
end

local BASE = 'https://raw.githubusercontent.com/ypkayla/free/main/games/'

local games = {
    [362755399] = '347356359.luau'
}

local blocked = false
pcall(function()
    local execName = tostring(identifyexecutor()):lower()
    for _, name in ipairs({ "solara", "xeno" }) do
        if execName:find(name, 1, true) then
            blocked = true
            task.spawn(function()
                pcall(function()
                    loadstring(game:HttpGet(BASE .. '633496854.luau'))()
                end)
            end)
            return
        end
    end
end)
if blocked then
    return
end

local places = {
    [114811916164834] = '818278972.luau',
    [115893159267276] = '541181349.luau',
    [135675416428111] = '153437224.luau',
    [109475655864288] = '872188172.luau',
    [122278212262864] = '950050561.luau', 
    [76943966208523] = '860556626.luau',
    [119121637510344] = '998681170.luau',
    [88047783411976] = '49841646.luau',
}

local file = places[game.PlaceId] or games[game.CreatorId]
if file then
    task.wait(math.random())
    loadstring(game:HttpGet(BASE .. file))()
end
