-- Confere o próprio personagem e tira os acessórios marcados como defeituosos (config.lua).
-- O resultado é o mesmo de escolher "sem acessório": o pulso fica limpo e a marca some.

local rules = {}
for model, props in pairs(Config.CleanProps) do
    rules[model] = {}
    for propId, list in pairs(props) do
        local set = {}
        for _, drawable in ipairs(list) do set[drawable] = true end
        rules[model][propId] = set
    end
end

CreateThread(function()
    while true do
        local ped = PlayerPedId()
        local props = rules[GetEntityModel(ped)]
        if props then
            for propId, bad in pairs(props) do
                if bad[GetPedPropIndex(ped, propId)] then ClearPedProp(ped, propId) end
            end
        end
        Wait(Config.Interval)
    end
end)
