print("^1Yb        dP  dP Yb  8888P 8888P 888888 Yb    dP ")
print("^6 Yb  db  dP  dP   Yb   dP    dP    88    Yb  dP ")
print("^1  YbdPYbdP   Yb   dP  dP    dP     88     YbdP  ")
print("^6   YP  YP     YbodP  d8888 d8888   88      YP   ")

ESX = nil
vip = false

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(100)
	end
end)

-------------------------------------

--Principal
RMenu.Add('vip', 'main', RageUI.CreateMenu("Menu Vip", "Rework By Wozztv"))
--Peds
RMenu.Add('vip', 'joueur', RageUI.CreateSubMenu(RMenu:Get('vip', 'main'), "Menu Vip", "Peds"))
--Armes
RMenu.Add('vip', 'weapon', RageUI.CreateSubMenu(RMenu:Get('vip', 'main'), "Menu Vip", "Armes"))
RMenu:Get("vip", "main"):SetRectangleBanner(234, 160, 223, 110)
RMenu:Get("vip", "weapon"):SetRectangleBanner(234, 160, 223, 110) 
RMenu:Get("vip", "joueur"):SetRectangleBanner(234, 160, 223, 110) 

--------------------------------------


Citizen.CreateThread(function()
	while true do
		
		RageUI.IsVisible(RMenu:Get('vip', 'main'), true, true, true, function()
			
            RageUI.Button("Peds", nil, {RightLabel = "→→"}, true, function(Hovered,Active,Selected)
            end, RMenu:Get('vip', 'joueur'))

            RageUI.Button("Armes", nil, {RightLabel = "→→"}, true, function(Hovered,Active,Selected)
            end, RMenu:Get('vip', 'weapon'))

            end, function()
            end)


            RageUI.IsVisible(RMenu:Get('vip', 'joueur'), true, true, true, function()
                RageUI.Button("Reprendre son personnage", nil, {RightLabel = ""}, true, function(Hovered, Active, Selected)
                    if (Selected) then   
                    ESX.TriggerServerCallback('esx_skin:getPlayerSkin', function(skin, jobSkin)
                        local isMale = skin.sex == 0
    
    
                        TriggerEvent('skinchanger:loadDefaultModel', isMale, function()
                            ESX.TriggerServerCallback('esx_skin:getPlayerSkin', function(skin)
                                TriggerEvent('skinchanger:loadSkin', skin)
                                TriggerEvent('esx:restoreLoadout')
                        end)
                        end)
                        end)
                end
                end)

                RageUI.Button("Entrer un ped custom", nil, {RightLabel = ""}, true, function(Hovered, Active, Selected)
                    if (Selected) then   
                    local j1 = PlayerId()
                    local newped = KeyboardInput('Entrer le nom de votre Ped', '', 45)
                    local p1 = GetHashKey(newped)
                    RequestModel(p1)
                    while not HasModelLoaded(p1) do
                      Wait(100)
                     end
                     SetPlayerModel(j1, p1)
                     SetModelAsNoLongerNeeded(p1)
                    end      
                end)

                RageUI.Separator("↓ ~g~Sélection rapide ~s~↓")
            
                RageUI.Button("Singe", nil, {RightLabel = ""}, true, function(Hovered, Active, Selected)
                    if (Selected) then   
                    local j1 = PlayerId()
                    local p1 = GetHashKey('a_c_chimp')
                    RequestModel(p1)
                    while not HasModelLoaded(p1) do
                        Wait(100)
                        end
                        SetPlayerModel(j1, p1)
                        SetModelAsNoLongerNeeded(p1)
                    end      
                end)

                RageUI.Button("Danseuse", nil, {RightLabel = ""}, true, function(Hovered, Active, Selected)
                    if (Selected) then   
                    local j1 = PlayerId()
                    local p1 = GetHashKey('csb_stripper_01')
                    RequestModel(p1)
                    while not HasModelLoaded(p1) do
                        Wait(100)
                        end
                        SetPlayerModel(j1, p1)
                        SetModelAsNoLongerNeeded(p1)
                    end      
                end)

                RageUI.Button("Cosmonaute", nil, {RightLabel = ""}, true, function(Hovered, Active, Selected)
                    if (Selected) then   
                    local j1 = PlayerId()
                    local p1 = GetHashKey('s_m_m_movspace_01')
                    RequestModel(p1)
                    while not HasModelLoaded(p1) do
                        Wait(100)
                        end
                        SetPlayerModel(j1, p1)
                        SetModelAsNoLongerNeeded(p1)
                    end      
                end)

                 RageUI.Button("Alien", nil, {RightLabel = ""}, true, function(Hovered, Active, Selected)
                    if (Selected) then   
                    local j1 = PlayerId()
                    local p1 = GetHashKey('s_m_m_movalien_01')
                    RequestModel(p1)
                    while not HasModelLoaded(p1) do
                        Wait(100)
                        end
                        SetPlayerModel(j1, p1)
                        SetModelAsNoLongerNeeded(p1)
                    end      
                end)

                 RageUI.Button("Chat", nil, {RightLabel = ""}, true, function(Hovered, Active, Selected)
                    if (Selected) then   
                    local j1 = PlayerId()
                    local p1 = GetHashKey('a_c_cat_01')
                    RequestModel(p1)
                    while not HasModelLoaded(p1) do
                      Wait(100)
                     end
                     SetPlayerModel(j1, p1)
                     SetModelAsNoLongerNeeded(p1)
                    end      
                end)

                 RageUI.Button("Aigle", nil, {RightLabel = ""}, true, function(Hovered, Active, Selected)
                    if (Selected) then   
                    local j1 = PlayerId()
                    local p1 = GetHashKey('a_c_chickenhawk')
                    RequestModel(p1)
                    while not HasModelLoaded(p1) do
                      Wait(100)
                     end
                     SetPlayerModel(j1, p1)
                     SetModelAsNoLongerNeeded(p1)
                    end      
                end)

                 RageUI.Button("Coyote", nil, {RightLabel = ""}, true, function(Hovered, Active, Selected)
                    if (Selected) then   
                    local j1 = PlayerId()
                    local p1 = GetHashKey('a_c_coyote')
                    RequestModel(p1)
                    while not HasModelLoaded(p1) do
                      Wait(100)
                     end
                     SetPlayerModel(j1, p1)
                     SetModelAsNoLongerNeeded(p1)
                    end      
                end)

            end, function()
            end)
            
            RageUI.IsVisible(RMenu:Get('vip', 'weapon'), true, true, true, function()

                RageUI.Button("Revolver MK2",nil, {RightLabel = "~g~10,000$"}, true, function(Hovered, Active, Selected)
                    if (Selected) then  
                        local item = "weapon_revolver_mk2"
                        local prix = 10000
                        TriggerServerEvent('vip:acheter', item, prix)
                    end      
                end)
            
                RageUI.Button("SMG MK2",nil, {RightLabel = "~g~15,000$"}, true, function(Hovered, Active, Selected)
                    if (Selected) then  
                        local item = "weapon_smg_mk2"
                        local prix = 15000
                        TriggerServerEvent('vip:acheter', item, prix)
                    end      
                end)
            
                    RageUI.Button("AK-47",nil, {RightLabel = "~g~49,000$"}, true, function(Hovered, Active, Selected)
                        if (Selected) then 
                            local item = "weapon_assaultrifle"
                            local prix = 49000
                            TriggerServerEvent('vip:acheter', item, prix)
                    end      
                end)
            
                    RageUI.Button("Bayonette",nil, {RightLabel = "~g~1,000$"}, true, function(Hovered, Active, Selected)
                        if (Selected) then
                            local item = "weapon_switchblade"
                            local prix = 1000
                            TriggerServerEvent('vip:acheter', item, prix)
                    end      
                end)
            
                    RageUI.Button("Couteau",nil, {RightLabel = "~g~500$"}, true, function(Hovered, Active, Selected)
                        if (Selected) then
                            local item = "weapon_knife"
                            local prix = 500
                            TriggerServerEvent('vip:acheter', item, prix)
                    end      
                end)
            
                    RageUI.Button("Sniper",nil, {RightLabel = "~g~100,000$"}, true, function(Hovered, Active, Selected)
                    if (Selected) then
                        local item = "weapon_sniperrifle"
                        local prix = 100000
                        TriggerServerEvent('vip:acheter', item, prix)
                    end      
                end)
            
                RageUI.Button("Shotgun",nil, {RightLabel = "~g~50,000$"}, true, function(Hovered, Active, Selected)
                    if (Selected) then
                        local item = "weapon_pumpshotgun"
                        local prix = 50000
                        TriggerServerEvent('vip:acheter', item, prix)
                    end      
                end)
            
            
            end, function()
            end)


            Citizen.Wait(0)
        end
    end)

----------------------------------------------------------------------------------------------------------------

function KeyboardInput(TextEntry, ExampleText, MaxStringLenght)

	-- TextEntry		-->	The Text above the typing field in the black square
	-- ExampleText		-->	An Example Text, what it should say in the typing field
	-- MaxStringLenght	-->	Maximum String Lenght

	AddTextEntry('FMMC_KEY_TIP1', TextEntry) --Sets the Text above the typing field in the black square
	DisplayOnscreenKeyboard(1, "FMMC_KEY_TIP1", "", ExampleText, "", "", "", MaxStringLenght) --Actually calls the Keyboard Input
	blockinput = true --Blocks new input while typing if **blockinput** is used

	while UpdateOnscreenKeyboard() ~= 1 and UpdateOnscreenKeyboard() ~= 2 do --While typing is not aborted and not finished, this loop waits
		Citizen.Wait(0)
	end
		
	if UpdateOnscreenKeyboard() ~= 2 then
		local result = GetOnscreenKeyboardResult() --Gets the result of the typing
		Citizen.Wait(500) --Little Time Delay, so the Keyboard won't open again if you press enter to finish the typing
		blockinput = false --This unblocks new Input when typing is done
		return result --Returns the result
	else
		Citizen.Wait(500) --Little Time Delay, so the Keyboard won't open again if you press enter to finish the typing
		blockinput = false --This unblocks new Input when typing is done
		return nil --Returns nil if the typing got aborted
	end
end

----------------------------------------------------------------------------------------------------------------

function vipmenu()
    vip = false
        ESX.TriggerServerCallback('getvip', function(vip)
            if vip then 
            RageUI.Visible(RMenu:Get('vip', 'main'), not RageUI.Visible(RMenu:Get('vip', 'main')))
            else  
            RageUI.CloseAll()
            ESX.ShowAdvancedNotification('~b~Santa Flora', '~r~Vip', '~g~Tu n\'es pas vip !', 'CHAR_SOCIAL_CLUB')
        end
    end)
end

----------------------------------------------------------------------------------------------------------------

RegisterCommand("vip2", function() 
    vipmenu()
end)
