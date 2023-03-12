local screenW, screenH = guiGetScreenSize()


local page = "http://mta/htmljss/index.html"

addEvent("X",true)
addEventHandler( "X",root,
function  ()
        executeBrowserJavascript(source, "document.getElementById('all').innerHTML = '" .. getPlayerName(localPlayer) .. "';")



end )


function createit ( )
    loadBrowserURL( source , "http://mta/"..getResourceName(getThisResource()).."/index.html" )
        if( isBrowserDomainBlocked( "http://mta/"..getResourceName(getThisResource()).."/index.html" ) ) then
                  requestBrowserDomains( {"http://mta/"..getResourceName(getThisResource()).."/index.html"} )
				  local initBrowser = guiCreateBrowser(screenW * 0.233, screenH * 0.233, screenW * 0.233, screenH * 0.233, true, true, false)
                  return reloadBrowserPage( source )
              end
            end 


        
isManuOpen = false
function OpenManu (bool)
    if (bool == true and isManuOpen == false ) then  
        isManuOpen = true
    Brow = guiCreateBrowser(0,0, screenW, screenH, true, true, false)
    BrowserVe = guiGetBrowser( Brow )
    addEventHandler( "onClientBrowserCreated",BrowserVe ,createit)
    showCursor(true)
end
    if (bool == false and  isManuOpen == true )then 
        destroyElement(Brow)
        showCursor(false)
        isManuOpen = false
        end
end 
function start()
guiSetVisible( OpenManu, not guiGetVisible( OpenManu ) )
showCursor( guiGetVisible( GOpenManu) )
end

function  start(Command)
    if (Command == "Openxxx@!xxxxxxxxxxxs") then 
    OpenManu (true)
end
    if (Command == "Close@@!@#_")  then
    OpenManu (false)
end
end
bindKey ( "F2", "up", "Openxxx@!xxxxxxxxxxxs" )  
addCommandHandler("Openxxx@!xxxxxxxxxxxs",start)
addCommandHandler("Close@@!@#_",start)


function createVehicleCommand(cmd, ...)
	local vehID
	local vehiclesToCreate = {}
	local args = { ... }
	for i,v in ipairs(args) do
		vehID = tonumber(v)
		if not vehID then
			vehID = getVehicleModelFromName(v)
		end
		if vehID then
			table.insert(vehiclesToCreate, math.floor(vehID))
		end
	end
	server.giveMeVehicles(vehiclesToCreate)
end
addCommandHandler('createvehicle', createVehicleCommand)
addCommandHandler('cv', createVehicleCommand)

addEvent("Flip",true)
addEventHandler( "Flip",root,
function  ()
triggerServerEvent("gFlip",localPlayer)

end )



 addEvent("t9adm",true)
addEventHandler( "t9adm",root,
function () 
	local playerVehicle = getPedOccupiedVehicle(localPlayer) -- Get the players vehicle
	if(playerVehicle) then -- Check the return value.
		for i,v in pairs(getElementsByType("vehicle")) do --LOOP through all vehicles
			setElementCollidableWith(v, playerVehicle, false) -- Set the collison off with the other vehicles.
		end
		outputChatBox("#ffffff* #FFFFFF[ #a00000Root System #FFFFFF] : تم تشغيل منع التصادم",255,0,0,true)
executeBrowserJavascript(BrowserVe, 'document.getElementById("h1").innerHTML = " منع التصادم = ON";')

end
end )


  addEvent("not9adm",true)
addEventHandler( "not9adm",root,
function () 
	local playerVehicle = getPedOccupiedVehicle(localPlayer) -- Get the players vehicle
	if(playerVehicle) then -- Check the return value.
		for i,v in pairs(getElementsByType("vehicle")) do --LOOP through all vehicles
			setElementCollidableWith(v, playerVehicle, true) -- Set the collison off with the other vehicles.
		end
		outputChatBox("#ffffff* #FFFFFF[ #a00000Root System #FFFFFF] : تم اطفاء وضع التصادم",255,0,0,true)
executeBrowserJavascript(BrowserVe, 'document.getElementById("h1").innerHTML = "منع التصادم = OFF";')

end
end )



 
hudonoff = true
addEvent("showhud",true)
addEventHandler( "showhud",root,
function  ()
    if (hudonoff == true) then 
 setPlayerHudComponentVisible("all",false)
 hudonoff = false 
    else 
        setPlayerHudComponentVisible("all",true)
        hudonoff = true
         end 
end )
addEvent("Alentra21",true)
addEventHandler( "Alentra21",root,
function () 
    triggerServerEvent("Alentra21",localPlayer)
	executeBrowserJavascript(BrowserVe, 'document.getElementById("h1").innerHTML = "سيارتك هي : النترا 2021";')

end )


addEvent("Altema20",true)
addEventHandler( "Altema20",root,
function () 
    triggerServerEvent("Altema20",localPlayer)
		executeBrowserJavascript(BrowserVe, 'document.getElementById("h1").innerHTML = "سيارتك هي : التيما 2020";')

end )

addEvent("Altema10",true)
addEventHandler( "Altema10",root,
function () 
    triggerServerEvent("Altema10",localPlayer)
		executeBrowserJavascript(BrowserVe, 'document.getElementById("h1").innerHTML = "سيارتك هي : التيما 2010";')

end )

addEvent("Cadinza21",true)
addEventHandler( "Cadinza21",root,
function () 
    triggerServerEvent("Cadinza21",localPlayer)
		executeBrowserJavascript(BrowserVe, 'document.getElementById("h1").innerHTML = "سيارتك هي : كادينزا 2021";')

end )

addEvent("Sonata10",true)
addEventHandler( "Sonata10",root,
function () 
    triggerServerEvent("Sonata10",localPlayer)
		executeBrowserJavascript(BrowserVe, 'document.getElementById("h1").innerHTML = "سيارتك هي : سوناتا 2010 ";')

end )
addEvent("Accord172",true)
addEventHandler( "Accord172",root,
function () 
    triggerServerEvent("Accord172",localPlayer)
		executeBrowserJavascript(BrowserVe, 'document.getElementById("h1").innerHTML = "سيارتك هي : اكورد 2017 النسخة الثانية ";')

end )

addEvent("Land7",true)
addEventHandler( "Land7",root,
function () 
    triggerServerEvent("Land7",localPlayer)
		executeBrowserJavascript(BrowserVe, 'document.getElementById("h1").innerHTML = "سيارتك هي : لاند كروز هستره 2007";')

end )


addEvent("Accord12",true)
addEventHandler( "Accord12",root,
function () 
    triggerServerEvent("Accord12",localPlayer)
		executeBrowserJavascript(BrowserVe, 'document.getElementById("h1").innerHTML = "سيارتك هي : اكورد 2012";')

end )


addEvent("Avalon",true)
addEventHandler( "Avalon",root,
function () 
    triggerServerEvent("Avalon",localPlayer)
		executeBrowserJavascript(BrowserVe, 'document.getElementById("h1").innerHTML = "سيارتك هي : 2021";')

end )

addEvent("fixCar",true)
addEventHandler( "fixCar",root,
function  ()
    triggerServerEvent("gfixCar",localPlayer)
end )

addEvent("Close",true)
addEventHandler( "Close",root,
function  ()
executeCommandHandler ( "Close@@!@#_" )
end )


addEvent("grafix",true)
addEventHandler( "grafix",root,
function  ()
		executeCommandHandler ( "StartS7ab" )
		executeCommandHandler ( "StartWater" )
		executeCommandHandler ( "radialblur" )
		executeCommandHandler ( "Start5TotHajwallah" )
		executeCommandHandler ( "StartBloom" )
		executeCommandHandler ( "StartCarShedar" )
		setFarClipDistance( 1500 )
		setFogDistance(800)
			executeBrowserJavascript(BrowserVe, 'document.getElementById("h1").innerHTML = "تم تشغيل الجرافيكس";')

end)

addEvent("time1",true)
addEventHandler( "time1",root,
function  ()
  setWeather(8) 
end )
addEvent("time2",true)
addEventHandler( "time2",root,
function  ()
  setWeather(2) 

end )
addEvent("time3",true)
addEventHandler( "time3",root,
function  ()
  setWeather(4) 

end )
addEvent("time4",true)
addEventHandler( "time4",root,
function  ()
            setTime( 6, 45 )
end )
addEvent("time5",true)
addEventHandler( "time5",root,
function  ()
  setWeather(12) 
end )
addEvent("time6",true)
addEventHandler( "time6",root,
function  ()
            setTime( 5, 45 )
end )
addEvent("time7",true)
addEventHandler( "time7",root,
function  ()
  setWeather(11) 
end )
addEvent("time8",true)
addEventHandler( "time8",root,
function  ()
            setTime( 5, 15 )
end )

addEvent("g1",true)
addEventHandler("g1",root ,
function () 
    triggerServerEvent("g1",localPlayer  )
    end)
addEvent("g2",true)
addEventHandler("g2",root ,
function () 
    triggerServerEvent("g2",localPlayer  )
    end)
addEvent("g3",true)
addEventHandler("g3",root ,
function () 
    triggerServerEvent("g3",localPlayer  )
    end)
addEvent("g4",true)
addEventHandler("g4",root ,
function () 
    triggerServerEvent("g4",localPlayer  )
    end)
addEvent("g5",true)
addEventHandler("g5",root ,
function () 
    triggerServerEvent("g5",localPlayer  )
    end)
addEvent("g6",true)
addEventHandler("g6",root ,
function () 
    triggerServerEvent("g6",localPlayer  )
    end)
addEvent("g7",true)
addEventHandler("g7",root ,
function () 
    triggerServerEvent("g7",localPlayer  )
    end)
addEvent("g8",true)
addEventHandler("g8",root ,
function () 
    triggerServerEvent("g8",localPlayer  )
    end)
addEvent("g9",true)
addEventHandler("g9",root ,
function () 
    triggerServerEvent("g9",localPlayer  )
    end)
addEvent("g10",true)
addEventHandler("g10",root ,
function () 
    triggerServerEvent("g10",localPlayer  )
    end)
addEvent("g11",true)
addEventHandler("g11",root ,
function () 
    triggerServerEvent("g11",localPlayer  )
    end)
addEvent("g12",true)
addEventHandler("g12",root ,
function () 
    triggerServerEvent("g12",localPlayer  )
    end)


addEvent("Hed",true)
addEventHandler("Hed",root ,
function () 
    triggerServerEvent("Hed",localPlayer  )
    end)
addEvent("UnHed",true)
addEventHandler("UnHed",root ,
function () 
    triggerServerEvent("UnHed",localPlayer  )
    end)



addEvent("Accord2004",true)
addEventHandler( "Accord2004",root,
function  ()
    triggerServerEvent("Accord2004",localPlayer  )
		executeBrowserJavascript(BrowserVe, 'document.getElementById("h1").innerHTML = "سيارتك هي : اكورد 2004";')


end )

addEvent("camry19",true)
addEventHandler( "camry19",root,
function  ()
    triggerServerEvent("camry19",localPlayer  )
		executeBrowserJavascript(BrowserVe, 'document.getElementById("h1").innerHTML = "سيارتك هي : كامري 2019 ";')


end )
addEvent("Sonata21",true)
addEventHandler( "Sonata21",root,
function  ()
    triggerServerEvent("Sonata21",localPlayer  )
		executeBrowserJavascript(BrowserVe, 'document.getElementById("h1").innerHTML = "سيارتك هي : سوناتا 2021";')


end )

addEvent("Accord20",true)
addEventHandler( "Accord20",root,
function  ()
    triggerServerEvent("Accord20",localPlayer  )
		executeBrowserJavascript(BrowserVe, 'document.getElementById("h1").innerHTML = "سيارتك هي : اكورد 2020";')


end )
addEvent("Camry11",true)
addEventHandler( "Camry11",root,
function  ()
    triggerServerEvent("Camry11",localPlayer  )
		executeBrowserJavascript(BrowserVe, 'document.getElementById("h1").innerHTML = "سيارتك هي : كامري 2011";')


end )
addEvent("Spark",true)
addEventHandler( "Spark",root,
function  ()
    triggerServerEvent("Spark",localPlayer)
		executeBrowserJavascript(BrowserVe, 'document.getElementById("h1").innerHTML = "سيارتك هي : سبارك ";')


end )
addEvent("Camry6",true)
addEventHandler( "Camry6",root,
function  ()
    triggerServerEvent("Camry6",localPlayer)
		executeBrowserJavascript(BrowserVe, 'document.getElementById("h1").innerHTML = "سيارتك هي : كامري 2006";')


end )
addEvent("Accord17",true)
addEventHandler( "Accord17",root,
function  ()
    triggerServerEvent("Accord17",localPlayer)
		executeBrowserJavascript(BrowserVe, 'document.getElementById("h1").innerHTML = "سيارتك هي : هوندا اكورد 2017 النسخة الاولى";')


end )
addEvent("Caprice16",true)
addEventHandler( "Caprice16",root,
function  ()
    triggerServerEvent("Caprice16",localPlayer)
		executeBrowserJavascript(BrowserVe, 'document.getElementById("h1").innerHTML = "سيارتك هي : كابرس 2016";')


end )
addEvent("Cadinza16",true)
addEventHandler( "Cadinza16",root,
function  ()
    triggerServerEvent("Cadinza16",localPlayer)
	executeBrowserJavascript(BrowserVe, 'document.getElementById("h1").innerHTML = "سيارتك هي : كادينزا 2016";')

end )

addEvent("Optima16",true)
addEventHandler( "Optima16",root,
function  ()
    triggerServerEvent("Optima16",localPlayer)
		executeBrowserJavascript(BrowserVe, 'document.getElementById("h1").innerHTML = "سيارتك هي : اوبتيما 2016";')


end )
addEvent("Caprice13",true)
addEventHandler( "Caprice13",root,
function  ()
    triggerServerEvent("Caprice13",localPlayer)
		executeBrowserJavascript(BrowserVe, 'document.getElementById("h1").innerHTML = "سيارتك هي : كابرس 2013";')


end )
addEvent("Sonata11",true)
addEventHandler( "Sonata11",root,
function  ()
    triggerServerEvent("Sonata11",localPlayer)
		executeBrowserJavascript(BrowserVe, 'document.getElementById("h1").innerHTML = "سيارتك هي : سوناتا 2011";')


end )