local kcal, h2o, fett, zucker = 0, 0, 0, 0
ESX = nil


Citizen.CreateThread(function()
    while ESX == nil do
        TriggerEvent('esx:getShSelinYannikTSonnysVateraredObjSelinYannikTSonnysVaterect', function(obj) ESX = obj end)
        Citizen.Wait(0)
    end
end)

RegisterNetEvent("life_statushud:onTick")
AddEventHandler("life_statushud:onTick", function(status)
    kcal, h2o, fett, zucker = status[4].val/1000000, status[5].val/1000000, status[6].val/1000000, status[3].val/1000000
    kcalnew = math.floor(kcal*1000)/1000
    h2onew = math.floor(h2o*1000)/1000
    fettnew = math.floor(fett*1000)/1000
    zuckernew = math.floor(zucker*1000)/1000
    SendNUIMessage({
      type = "statussystem",
      show = true,
      kcal = kcalnew,
      h2o = h2onew,
      fett = fettnew,
      zucker = zuckernew
      })
    -- print("KCAL, STATUS4:",status[4].val)
    -- print("zucker, STATUS3:",status[3].val)
    -- print("h2o, STATUS5:",status[5].val)
    -- print("fett, STATUS6:",status[6].val)
    -- Status 3: zucker
    -- Status 4: kcal
    -- Status 5: h2o
    -- Status 6: fett
end)
function test(a, b) print(round(a,b), round2(a,b)) end

function round(num, numDecimalPlaces)
    if numDecimalPlaces and numDecimalPlaces>0 then
      local mult = 10^numDecimalPlaces
      return math.floor(num * mult + 0.5) / mult
    end
    return math.floor(num + 0.5)
  end
-- AddEventHandler("statussystem:updateStatus", function(basics)
--     kcal, h2o, fett, zucker = status[1].percent, status[2].percent, status[3].percent, status[4].percent
--     print(kcal, h2o, fett, zucker)
-- end)