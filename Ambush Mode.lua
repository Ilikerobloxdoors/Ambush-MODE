local Creator = loadstring(game:HttpGet("https://pastebin.com/raw/0fSnvfGt"))()

local function spawnAmbush()
    local entity = Creator.createEntity({
        CustomName = "Ambush",

        Model = "https://raw.githubusercontent.com/Ilikerobloxdoors/Ambush/main/AMBUSH.1.rbxm",

        Speed = 300,
        DelayTime = 3.5,
        HeightOffset = 0,

        CanKill = true,
        KillRange = 60,

        BreakLights = true,
        BackwardsMovement = false,

        FlickerLights = {
            true,
            2,
        },

        Cycles = {
            Min = 2,
            Max = 5,
            WaitTime = 0.1,
        },

        CamShake = {
            true,
            {4.3, 25, 0.2, 1.3},
            100,
        },

        Jumpscare = {
            true,
            {
                Image1 = "rbxassetid://10110576663",
                Image2 = "rbxassetid://10110576663",

                Shake = false,

                Sound1 = {
                    104513172698892,
                    {Volume = 1.5},
                },

                Sound2 = {
                    104513172698892,
                    {Volume = 1.5},
                },

                Flashing = {
                    true,
                    Color3.fromRGB(0, 198, 109),
                },

                Tease = {
                    false,
                    Min = 0,
                    Max = 0,
                },
            },
        },

        CustomDialog = {
            "You died to Ambush..."
        },
    })

    entity.Debug.OnEntitySpawned = function(entityTable)
        print("Ambush spawned!")
    end

    entity.Debug.OnEntityDespawned = function(entityTable)
        print("Ambush despawned!")
    end

    entity.Debug.OnDeath = function(entityTable)
        warn("Player died to Ambush.")
    end

    -- Run it separately so the timer isn't blocked
    task.spawn(function()
        Creator.runEntity(entity)
    end)
end

-- Spawn immediately
spawnAmbush()

-- Then every 30 seconds
while true do
    task.wait(30)
    spawnAmbush()
end
