### np-npcs
- np-npcs including full-server-side
- [NoPicks 3.5 Discord](https://discord.gg/QZ4XAPUVps)

#### Template
```lua
function GenerateNoPicksPed()
    for _, location in ipairs({vector4(0, 0, 0, 0)}) do -- coords goes here
        Generic.NPCS[#Generic.NPCS + 1] = {
            id = ("nopicksped_%s"):format(_), -- used in interact
            name = ("NoPicks Ped %s"):format(_),
            pedType = 4,
            model = "mp_m_freemode_01", -- https://docs.fivem.net/docs/game-references/ped-models
            networked = false,
            distance = 25.0, -- displays the ped from what distance
            position = {
                coords = location.xyz, -- first three digits in vector4
                heading = location.w, -- last digit of vector4
                random = false -- based on Generic.SpawnLocations
            },
            appearance = nil, -- leave null or refer to https://pastebin.com/s4dH4SkX
            settings = {
                { mode = "invincible", active = true }, -- ped godmode
                { mode = "ignore", active = true }, -- ignore player actions
                { mode = "freeze", active = true }, -- whether can move or not
            },
            flags = {
                ['isNPC'] = true, -- used in interact
            }
        }
    end
end
```
- Also do not **FORGET** to declare your ped in the server event