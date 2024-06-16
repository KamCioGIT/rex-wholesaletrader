local RSGCore = exports['rsg-core']:GetCoreObject()

-------------------------------------
-- wholesale blips
-------------------------------------
Citizen.CreateThread(function()
    for wholesale, v in pairs(Config.WholesaleLocations) do
        if v.showblip == true then
            local WholesaleTraderBlip = BlipAddForCoords(1664425300, v.coords)
            SetBlipSprite(WholesaleTraderBlip, joaat(Config.WholesaleBlip.blipSprite), true)
            SetBlipScale(WholesaleTraderBlip, Config.WholesaleBlip.blipScale)
            SetBlipName(WholesaleTraderBlip, Config.WholesaleBlip.blipName)
        end
    end
end)

-------------------------------------
-- wholesale shop
-------------------------------------
RegisterNetEvent('rsg-wholesaletrader:client:openshop', function()

    local jobtype = RSGCore.Functions.GetPlayerData().job.type

    if jobtype ~= 'saloon' then
        lib.notify({
            title = Lang:t('client.lang_1'),
            type = 'error',
            icon = 'fa-solid fa-xmark',
            iconAnimation = 'shake',
            duration = 7000
        })
        return
    end

    local ShopItems = {}
    ShopItems.label = Lang:t('client.lang_2')
    ShopItems.items = Config.WholesaleShop
    ShopItems.slots = #Config.WholesaleShop
    TriggerServerEvent('inventory:server:OpenInventory', 'shop', 'WholesaleShop_'..math.random(1, 99), ShopItems)

end)
