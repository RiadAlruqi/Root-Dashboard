local Vehicle={}



addEvent("gFlip",true)
addEventHandler("gFlip",root,
function ()

 local vehicle = getPedOccupiedVehicle(source)
     if (vehicle and getVehicleController ( vehicle ) == playerSource) then 

    if vehicle then
	
        local rX, rY, rZ = getElementRotation(vehicle)
		
			setElementRotation(vehicle, 0, 0, (rX > 90 and rX < 270) and (rZ + 180) or rZ)
		
		
	else
		end
    end
end )
addEventHandler ( "onPlayerQuit", root, 
    function ( ) 
        if Vehicle[source] then 
            if isElement ( Vehicle[source] ) then 
                destroyElement(Vehicle[source]) 
            end 
            Vehicle[source] = nil 
        end 
    end 
) 

function giveMeVehicles(vehicles)
	if type(vehicles) == 'number' then
		vehicles = { vehicles }
	end

	local px, py, pz, prot
	local radius = 3
	local playerVehicle = getPedOccupiedVehicle(source)
	if playerVehicle and isElement(playerVehicle) then
		px, py, pz = getElementPosition(playerVehicle)
		prot, prot, prot = getVehicleRotation(playerVehicle)
	else
		px, py, pz = getElementPosition(source)
		prot = getPedRotation(source)
	end
	local offsetRot = math.rad(prot)
	local vx = px + radius * math.cos(offsetRot)
	local vy = py + radius * math.sin(offsetRot)
	local vz = pz + 0
	local vrot = prot

	local vehicleList = g_PlayerData[source].vehicles
	local vehicle
	if ( not vehicles ) then return end
	for i,vehID in ipairs(vehicles) do
		if i > getOption('vehicles.maxperplayer') then
			break
		end
		if vehID < 400 or vehID > 611 then
			errMsg(vehID ..' is incorrect vehicle model', source)
		elseif not table.find(getOption('vehicles.disallowed'), vehID) then
			if #vehicleList >= getOption('vehicles.maxperplayer') then
				unloadVehicle(vehicleList[1])
			end
			vehicle = createVehicle(vehID, vx, vy, vz, 0, 0, vrot)
			if ( getElementData( source, 'isWarpIntoEnabled' ) == 'false' ) then warpPedIntoVehicle( source, vehicle ) end
			if (not isElement(vehicle)) then return end
			setElementInterior(vehicle, getElementInterior(source))
			setElementDimension(vehicle, getElementDimension(source))
			table.insert(vehicleList, vehicle)
			g_VehicleData[vehicle] = { creator = source, timers = {} }
			if vehID == 464 then
				warpPedIntoVehicle(source, vehicle)
			elseif not g_Trailers[vehID] then
				if getOption('vehicles.idleexplode') then
					g_VehicleData[vehicle].timers.fire = setTimer(commitArsonOnVehicle, getOption('vehicles.maxidletime'), 1, vehicle)
				end
				g_VehicleData[vehicle].timers.destroy = setTimer(unloadVehicle, getOption('vehicles.maxidletime') + (getOption('vehicles.idleexplode') and 10000 or 0), 1, vehicle)
			end
			vx = vx + 4
			vz = vz + 4
		else
			errMsg(getVehicleNameFromModel(vehID):gsub('y$', 'ie') .. 's are not allowed', source)
		end
	end
end

addEventHandler("onPlayerJoin",root, 
function () 
    bindKey(source,"c","down",fix) 
end) 
  
addEventHandler("onResourceStart",resourceRoot, 
function () 
    for index, player in ipairs(getElementsByType("player")) do 
        bindKey(player,"c","down",fix) 
		
    end 
end) 
  
function fix (playerSource) 
    local vehicle = getPedOccupiedVehicle (playerSource) 
    if (vehicle and getVehicleController ( vehicle ) == playerSource) then 
        fixVehicle (vehicle) 
        local rX, rY, rZ = getElementRotation(vehicle)
					setElementRotation(vehicle, 0, 0, (rX > 90 and rX < 270) and (rZ + 180) or rZ)

    end 
end 
addCommandHandler ("fix" , fix) 

addEvent("gfixCar",true)
addEventHandler("gfixCar",root,
function ()
	local vehicle = getPedOccupiedVehicle(source)
		     if (vehicle and getVehicleController ( vehicle ) == playerSource) then 

	if vehicle then
	
	fixVehicle(vehicle)
			
		
	else
		end
    end
end )


addEvent("Hed",true)
addEventHandler("Hed",root ,
function () 

local vehicle = getPedOccupiedVehicle(source) 
    if (vehicle and getVehicleController ( vehicle ) == source) then 
		addVehicleUpgrade(getPedOccupiedVehicle(source),1087 )

	end
	end)


addEvent("UnHed",true)
addEventHandler("UnHed",root ,
function () 
local vehicle = getPedOccupiedVehicle(source) 
    if (vehicle and getVehicleController ( vehicle ) == source) then 

		  removeVehicleUpgrade(getPedOccupiedVehicle(source),1087 )

	    end
    end)

addEvent("g1",true)
addEventHandler("g1",root ,
function () 
local vehicle = getPedOccupiedVehicle(source) 
    if (vehicle and getVehicleController ( vehicle ) == source) then 

		addVehicleUpgrade(getPedOccupiedVehicle(source),1076 )
	    end 
    end)

addEvent("g2",true)
addEventHandler("g2",root ,
function () 
local vehicle = getPedOccupiedVehicle(source) 
    if (vehicle and getVehicleController ( vehicle ) == source) then 
		addVehicleUpgrade(getPedOccupiedVehicle(source),1078)
	    end 
    end)

addEvent("g3",true)
addEventHandler("g3",root ,
function () 
local vehicle = getPedOccupiedVehicle(source) 
    if (vehicle and getVehicleController ( vehicle ) == source) then 

		addVehicleUpgrade(getPedOccupiedVehicle(source),1074 )
	    end 
    end)

addEvent("g4",true)
addEventHandler("g4",root ,
function () 
local vehicle = getPedOccupiedVehicle(source) 
    if (vehicle and getVehicleController ( vehicle ) == source) then 

		addVehicleUpgrade(getPedOccupiedVehicle(source),1075)
	    end 
    end)
addEvent("g5",true)
addEventHandler("g5",root ,
function () 
local vehicle = getPedOccupiedVehicle(source) 
    if (vehicle and getVehicleController ( vehicle ) == source) then 

		addVehicleUpgrade(getPedOccupiedVehicle(source),1077 )
	    end 
    end)

addEvent("g6",true)
addEventHandler("g6",root ,
function () 
local vehicle = getPedOccupiedVehicle(source) 
    if (vehicle and getVehicleController ( vehicle ) == source) then 

		addVehicleUpgrade(getPedOccupiedVehicle(source),1079)
	    end 
    end)
addEvent("g7",true)
addEventHandler("g7",root ,
function () 
local vehicle = getPedOccupiedVehicle(source) 
    if (vehicle and getVehicleController ( vehicle ) == source) then 

		addVehicleUpgrade(getPedOccupiedVehicle(source),1080 )
	    end 
    end)

addEvent("g8",true)
addEventHandler("g8",root ,
function () 
local vehicle = getPedOccupiedVehicle(source) 
    if (vehicle and getVehicleController ( vehicle ) == source) then 

		addVehicleUpgrade(getPedOccupiedVehicle(source),1081)
	    end 
    end)
addEvent("g9",true)
addEventHandler("g9",root ,
function () 
local vehicle = getPedOccupiedVehicle(source) 
    if (vehicle and getVehicleController ( vehicle ) == source) then 

		addVehicleUpgrade(getPedOccupiedVehicle(source),1082 )
	    end 
    end)

addEvent("g10",true)
addEventHandler("g10",root ,
function () 
local vehicle = getPedOccupiedVehicle(source) 
    if (vehicle and getVehicleController ( vehicle ) == source) then 

		addVehicleUpgrade(getPedOccupiedVehicle(source),1083)
	    end 
    end)
addEvent("g11",true)
addEventHandler("g11",root ,
function () 
local vehicle = getPedOccupiedVehicle(source) 
    if (vehicle and getVehicleController ( vehicle ) == source) then 

		addVehicleUpgrade(getPedOccupiedVehicle(source),1025 )
	    end 
    end)

addEvent("g12",true)
addEventHandler("g12",root ,
function () 
local vehicle = getPedOccupiedVehicle(source) 
    if (vehicle and getVehicleController ( vehicle ) == source) then 

		addVehicleUpgrade(getPedOccupiedVehicle(source),1084)
	    end 
    end)
addEvent("Alentra21",true)
addEventHandler("Alentra21",root ,
function () 
          x,y,z = getElementPosition( source ) 
           if Vehicle[source] then destroyElement( Vehicle[source],source) end 
        Vehicle[source] = createVehicle ( 566, x, y, z ) 
        warpPedIntoVehicle(source,Vehicle[source]) 

	end)


addEvent("Cadinza21",true)
addEventHandler("Cadinza21",root ,
function () 
          x,y,z = getElementPosition( source ) 
           if Vehicle[source] then destroyElement( Vehicle[source],source) end 
        Vehicle[source] = createVehicle ( 549, x, y, z ) 
        warpPedIntoVehicle(source,Vehicle[source]) 

	end)
addEvent("Sonata10",true)
addEventHandler("Sonata10",root ,
function () 
          x,y,z = getElementPosition( source ) 
           if Vehicle[source] then destroyElement( Vehicle[source],source) end 
        Vehicle[source] = createVehicle ( 551, x, y, z ) 
        warpPedIntoVehicle(source,Vehicle[source]) 

	end)
	addEvent("Accord172",true)
addEventHandler("Accord172",root ,
function () 
          x,y,z = getElementPosition( source ) 
           if Vehicle[source] then destroyElement( Vehicle[source],source) end 
        Vehicle[source] = createVehicle ( 507, x, y, z ) 
        warpPedIntoVehicle(source,Vehicle[source]) 

	end)

addEvent("Altema10",true)
addEventHandler("Altema10",root ,
function () 
          x,y,z = getElementPosition( source ) 
           if Vehicle[source] then destroyElement( Vehicle[source],source) end 
        Vehicle[source] = createVehicle ( 527, x, y, z ) 
        warpPedIntoVehicle(source,Vehicle[source]) 

	end)


addEvent("Altema20",true)
addEventHandler("Altema20",root ,
function () 
          x,y,z = getElementPosition( source ) 
           if Vehicle[source] then destroyElement( Vehicle[source],source) end 
        Vehicle[source] = createVehicle ( 560, x, y, z ) 
        warpPedIntoVehicle(source,Vehicle[source]) 

	end)

addEvent("Land7",true)
addEventHandler("Land7",root ,
function () 
          x,y,z = getElementPosition( source ) 
           if Vehicle[source] then destroyElement( Vehicle[source],source) end 
        Vehicle[source] = createVehicle ( 418, x, y, z ) 
        warpPedIntoVehicle(source,Vehicle[source]) 

	end)



addEvent("Accord2004",true)
addEventHandler("Accord2004",root ,
function () 
          x,y,z = getElementPosition( source ) 
           if Vehicle[source] then destroyElement( Vehicle[source],source) end 
        Vehicle[source] = createVehicle ( 445, x, y, z ) 
        warpPedIntoVehicle(source,Vehicle[source]) 

	end)

addEvent("camry19",true)
addEventHandler("camry19",root ,
function () 
          x,y,z = getElementPosition( source ) 
           if Vehicle[source] then destroyElement( Vehicle[source],source) end 
        Vehicle[source] = createVehicle ( 585, x, y, z ) 
        warpPedIntoVehicle(source,Vehicle[source]) 

	end)

addEvent("Sonata21",true)
addEventHandler("Sonata21",root ,
function () 
          x,y,z = getElementPosition( source ) 
           if Vehicle[source] then destroyElement( Vehicle[source],source) end 
        Vehicle[source] = createVehicle ( 580, x, y, z ) 
        warpPedIntoVehicle(source,Vehicle[source]) 

	end)

addEvent("Accord12",true)
addEventHandler("Accord12",root ,
function () 
          x,y,z = getElementPosition( source ) 
           if Vehicle[source] then destroyElement( Vehicle[source],source) end 
        Vehicle[source] = createVehicle ( 602, x, y, z ) 
        warpPedIntoVehicle(source,Vehicle[source]) 

	end)

addEvent("Avalon",true)
addEventHandler("Avalon",root ,
function () 
          x,y,z = getElementPosition( source ) 
           if Vehicle[source] then destroyElement( Vehicle[source],source) end 
        Vehicle[source] = createVehicle ( 550, x, y, z ) 
        warpPedIntoVehicle(source,Vehicle[source]) 

	end)
	
addEvent("Accord20",true)
addEventHandler("Accord20",root  ,
function ()
          x,y,z = getElementPosition( source ) 
           if Vehicle[source] then destroyElement( Vehicle[source],source) end 
        Vehicle[source] = createVehicle ( 550, x, y, z ) 
        warpPedIntoVehicle(source,Vehicle[source]) 

    end )
addEvent("Spark",true)
addEventHandler("Spark",root,
function ()
          x,y,z = getElementPosition( source ) 
           if Vehicle[source] then destroyElement( Vehicle[source],source) end 
        Vehicle[source] = createVehicle ( 421, x, y, z ) 
        warpPedIntoVehicle(source,Vehicle[source]) 

    end )
addEvent("Accord17",true)
addEventHandler("Accord17",root,
function ()
          x,y,z = getElementPosition( source ) 
           if Vehicle[source] then destroyElement( Vehicle[source],source) end 
        Vehicle[source] = createVehicle ( 405, x, y, z ) 
        warpPedIntoVehicle(source,Vehicle[source]) 

    end )
addEvent("Caprice16",true)
addEventHandler("Caprice16",root,
function ()
          x,y,z = getElementPosition( source ) 
           if Vehicle[source] then destroyElement( Vehicle[source],source) end 
        Vehicle[source] = createVehicle ( 426, x, y, z ) 
        warpPedIntoVehicle(source,Vehicle[source]) 

    end )
addEvent("Cadinza16",true)
addEventHandler("Cadinza16",root,
function ()
          x,y,z = getElementPosition( source ) 
           if Vehicle[source] then destroyElement( Vehicle[source],source) end 
        Vehicle[source] = createVehicle ( 466, x, y, z ) 
        warpPedIntoVehicle(source,Vehicle[source]) 
    end )
addEvent("Optima16",true)
addEventHandler("Optima16",root,
function ()
          x,y,z = getElementPosition( source ) 
           if Vehicle[source] then destroyElement( Vehicle[source],source) end 
        Vehicle[source] = createVehicle ( 585, x, y, z ) 
        warpPedIntoVehicle(source,Vehicle[source]) 
    end )
addEvent("Caprice13",true)
addEventHandler("Caprice13",root,
function ()
          x,y,z = getElementPosition( source ) 
           if Vehicle[source] then destroyElement( Vehicle[source],source) end 
        Vehicle[source] = createVehicle ( 546, x, y, z ) 
        warpPedIntoVehicle(source,Vehicle[source]) 
    end )
	addEvent("Sonata11",true)
addEventHandler("Sonata11",root,
function ()
          x,y,z = getElementPosition( source ) 
           if Vehicle[source] then destroyElement( Vehicle[source],source) end 
        Vehicle[source] = createVehicle ( 529, x, y, z ) 
        warpPedIntoVehicle(source,Vehicle[source]) 
    end )
     addEvent("Camry11",true)
addEventHandler("Camry11",root,
function ()
          x,y,z = getElementPosition( source ) 
           if Vehicle[source] then destroyElement( Vehicle[source],source) end 
        Vehicle[source] = createVehicle ( 492, x, y, z ) 
        warpPedIntoVehicle(source,Vehicle[source]) 
    end )
	     addEvent("Camry6",true)
addEventHandler("Camry6",root,
function ()
          x,y,z = getElementPosition( source ) 
           if Vehicle[source] then destroyElement( Vehicle[source],source) end 
        Vehicle[source] = createVehicle ( 529, x, y, z ) 
        warpPedIntoVehicle(source,Vehicle[source]) 
    end )