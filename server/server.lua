ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterServerEvent('setvip')
AddEventHandler('setvip', function(vip)
	local identifier = GetPlayerIdentifiers(source)[1]

	if type(vip) ~= 'boolean' then
		return
	end

	MySQL.Sync.execute('UPDATE users SET vip = @vip WHERE identifier = @identifier', {
		['@identifier'] = identifier,
		['@vip'] = vip
	})
end)
 
ESX.RegisterServerCallback('getvip', function(source, cb)
	local identifier = GetPlayerIdentifiers(source)[1]

	MySQL.Async.fetchScalar('SELECT vip FROM users WHERE identifier = @identifier', {
		['@identifier'] = identifier
	}, function(vip)

		cb(vip)
	end) 
end)

-----------------------------------------------------------


RegisterNetEvent('vip:acheter')
AddEventHandler('vip:acheter', function(item, prix)
	local xPlayer = ESX.GetPlayerFromId(source)
	local playerMoney = xPlayer.getMoney()

	if playerMoney >= prix then
		xPlayer.addWeapon(item, 42)
		xPlayer.removeMoney(prix)
		TriggerClientEvent('esx:showNotification', source, "Vous avez bien reçu votre ~g~"..item.." ~s~!")
	else
		TriggerClientEvent('esx:showNotification', source, "~r~Vous n'avez pas assez !")
	end
end)