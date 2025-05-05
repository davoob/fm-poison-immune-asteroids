local asteroid_sizes = {"small", "medium", "big", "huge"}
local asteroid_types = {'metallic', 'carbonic', 'oxide', 'promethium', 'auric'}

for _, asteroid_size in pairs(asteroid_sizes) do
    for _, asteroid_type in pairs(asteroid_types) do
        local asteroid = data.raw['asteroid'][asteroid_size..'-'..asteroid_type..'-asteroid']
        if asteroid and asteroid.resistances then
            table.insert(asteroid.resistances, {type = "poison", decrease = 0, percent = 100})
        end
    end
end


