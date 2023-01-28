Citizen.CreateThread(function()

    mstime = 8500 -- Time for a minigame launched

    while true do

        if not launched then 
            launched = true
            print('[HUNGER_GAMES] ^2GAME START IN 5s')
            Citizen.Wait(1000)
            print('[HUNGER_GAMES] ^2GAME START IN 4s')
            Citizen.Wait(1000)
            print('[HUNGER_GAMES] ^2GAME START IN 3s')
            Citizen.Wait(1000)
            print('[HUNGER_GAMES] ^2GAME START IN 2s')
            Citizen.Wait(1000)
            print('[HUNGER_GAMES] ^2GAME START IN 1s')
            Citizen.Wait(1000)
            print('[HUNGER_GAMES] ^2The Toxic Cloud approch the city')
        end

        Citizen.Wait(0)

 		local coords    = GetEntityCoords(PlayerPedId(),true,true) -- PlayerCoords
        local CenterMap = vector3(-1781.44, -488.32, 164.11)       -- CenterMap finalPoint

        if mstime > 6500 and mstime <= 8500 then
            marketside = 1250.0 - 16.2
            markerRounded = Citizen.InvokeNative(0x2A32FAA57B937173,
            0x94FDAE17, 
            CenterMap.x, 
            CenterMap.y + 0.0, 
            CenterMap.z-300.0, 
            0,
            0,
            0,
            0,
            0,
            0,
            2500.0,     -- l
            2500.0,     -- L
            600.0,      -- H
            255,255,155,255,0, 0, 2, 0, 0, 0, 0)
            mstime = mstime - 1
        end

        if mstime > 4000 and mstime <= 6500 then
            marketside = 1000.0 - 10
            markerRounded = Citizen.InvokeNative(0x2A32FAA57B937173,
            0x94FDAE17, 
            CenterMap.x, 
            CenterMap.y + 0.0, 
            CenterMap.z-300.0, 
            0,
            0,
            0,
            0,
            0,
            0,
            2000.0,
            2000.0, 
            600.0, 
            255,255,155,255,0, 0, 2, 0, 0, 0, 0)
            mstime = mstime - 1

            if not oneMarker then 
                oneMarker = true
                print('[HUNGER_GAMES] ^2The Toxic Cloud is now -1000 meters')
            end
        end

        if mstime > 2500 and mstime <= 4000 then
            marketside = 750.0
            markerRounded = Citizen.InvokeNative(0x2A32FAA57B937173,
            0x94FDAE17, 
            CenterMap.x, 
            CenterMap.y + 0.0, 
            CenterMap.z-300.0, 
            0,
            0,
            0,
            0,
            0,
            0,
            1500.0, 
            1500.0, 
            600.0,
            255,255,155,255,0, 0, 2, 0, 0, 0, 0)
            mstime = mstime - 1
            if not TwoMarker then 
                TwoMarker = true
                print('[HUNGER_GAMES] ^2The Toxic Cloud is now -750 meters')
            end
        end

        if mstime > 1000 and mstime <= 2500 then
            marketside = 350.0
            markerRounded = Citizen.InvokeNative(0x2A32FAA57B937173,
            0x94FDAE17, 
            CenterMap.x, 
            CenterMap.y + 0.0, 
            CenterMap.z-300.0, 
            0,
            0,
            0,
            0,
            0,
            0,
            900.0, 
            900.0, 
            600.0, 
            255,255,155,255,0, 0, 2, 0, 0, 0, 0)
            mstime = mstime - 1
            if not TreeMarker then 
                TreeMarker = true
                print('[HUNGER_GAMES] ^2The Toxic Cloud is now -350 meters')
            end
        end

        if mstime > 0 and mstime <= 1000 then
            marketside = 0.0
            markerRounded = Citizen.InvokeNative(0x2A32FAA57B937173,
            0x94FDAE17, 
            CenterMap.x, 
            CenterMap.y + 0.0, 
            CenterMap.z-300.0, 
            0,
            0,
            0,
            0,
            0,
            0,
            0.0, 
            0.0, 
            600.0,
            255,255,155,255,0, 0, 2, 0, 0, 0, 0)
            mstime = mstime - 1
            finish = true
            if not EndMarker and mstime <= 0 then 
                EndMarker = true
                print('[HUNGER_GAMES] ^2GAME ARE FINISH')
            end
        end

        AreaGame = GetDistanceBetweenCoords(coords, CenterMap.x, CenterMap.y,  CenterMap.z, true)
        if AreaGame >= marketside and not tickDeg then 
            tickDeg = true
            OutSideMarker()
        end
            
 	end
end)


function OutSideMarker()
    print('[HUNGER_GAMES] ^1INFECTED')
    ApplyDamageToPed(PlayerPedId(), 950000, false, true, true)
end
