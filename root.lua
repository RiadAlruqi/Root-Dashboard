local fuck = " سرقة موفقه ]:"

local ressName = getResourceName(getThisResource())



function includeFiles(fileList)

	for _,v in ipairs(fileList) do

		func = assert(loadstring(v))

		func()

	end

end

addEvent("include"..ressName.."Files",true)

addEventHandler("include"..ressName.."Files",getRootElement(),includeFiles)