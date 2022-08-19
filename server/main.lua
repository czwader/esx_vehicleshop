local categories, vehicles = {}, {}


Citizen.CreateThread(function()
	local char = Config.PlateLetters
	char = char + Config.PlateNumbers
	if Config.PlateUseSpace then char = char + 1 end

	if char > 8 then
		print(('[esx_vehicleshop] [^3WARNING^7] Plate character count reached, %s/8 characters!'):format(char))
	end
end)

ESX.RegisterServerCallback('esx_vehicleshop:buyVehicle', function(source, cb, model, plate, price)
	local xPlayer = ESX.GetPlayerFromId(source)
	if xPlayer.getMoney() >= price then
		xPlayer.removeMoney(price)

		MySQL.Async.execute('INSERT INTO owned_vehicles (owner, plate, vehicle, type) VALUES (@owner, @plate, @vehicle, @type)', {
			['@owner']   = xPlayer.identifier,
			['@plate']   = plate,
			['@vehicle'] = json.encode({model = GetHashKey(model), plate = plate}),
			['@type']    = 'car'
		}, function(rowsChanged)
			xPlayer.showNotification(_U('car_belongs', plate))
			cb(true)
		end)
	else
		cb(false)
	end
end)

ESX.RegisterServerCallback('esx_vehicleshop:isPlateTaken', function(source, cb, plate)
	MySQL.Async.fetchAll('SELECT 1 FROM owned_vehicles WHERE plate = @plate', {
		['@plate'] = plate
	}, function(result)
		cb(result[1] ~= nil)
	end)
end)
