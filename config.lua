Config = {}

-------------------------------------
-- npc settings
-------------------------------------
Config.DistanceSpawn = 20.0
Config.FadeIn = true

-------------------------------------
-- wholesale blip
-------------------------------------
Config.WholesaleBlip = {
    blipName = 'Wholesale Trader', -- Config.Blip.blipName
    blipSprite = 'blip_mp_trader_introduction', -- Config.Blip.blipSprite
    blipScale = 0.2 -- Config.Blip.blipScale
}

-------------------------------------
-- wholesale locations
-------------------------------------
Config.WholesaleLocations = {

    {   -- saint denis
        name = 'St Denis Wholesale Trader',
        coords = vector3(2354.31, -1477.59, 46.93),
        npcmodel   = `mp_u_m_m_trader_01`,
        npccoords  = vector4(2354.31, -1477.59, 46.93, 135.82),
        showblip = true
    },
    {    -- blackwater
        name = 'Blackwater Wholesale Trader',
        coords = vector3(-741.64, -1331.21, 43.48),
        npcmodel   = `mp_u_m_m_trader_01`,
        npccoords  = vector4(-741.64, -1331.21, 43.48, 134.19),
        showblip = true
    },
    {    -- van horn
        name = 'Van Horn Wholesale Trader',
        coords = vector3(2998.50, 565.33, 44.46),
        npcmodel   = `mp_u_m_m_trader_01`,
        npccoords  = vector4(2998.50, 565.33, 44.46, 120.85),
        showblip = true
    },

}

-------------------------------------
-- wholesale shop
-------------------------------------
Config.WholesaleShop = {

    [1] = { name = 'malt',   price = 0.05, amount = 5000, info = {}, type = 'item', slot = 1 },
    [2] = { name = 'hops',   price = 0.05, amount = 5000, info = {}, type = 'item', slot = 2 },
    [3] = { name = 'yeast',  price = 0.05, amount = 5000, info = {}, type = 'item', slot = 3 },
    [4] = { name = 'bottle', price = 0.10, amount = 5000, info = {}, type = 'item', slot = 4 },

}

-----------------------------------------------------------------------------------
