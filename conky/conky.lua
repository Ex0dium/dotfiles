require 'io'
require 'math'
require 'string'


function conky_albumImg()
	if conky_window == nil then 
        return
    end

	local handle = io.popen("playerctl metadata mpris:artUrl")
	local path = handle:read("*a")
	handle:close()
	path = string.gsub(path, "file://", "", 1)
	--path = string.gsub(path, "\n", "", 1)


    local s = "${image "..path.."  -s 80x80 -p 1,598 }"
    s=string.gsub(s, "\n", "", 1)
    --print(s)
    return s
end

function conky_musicLenght()
	local handle = io.popen("playerctl metadata --format '{{ duration(mpris:length) }}'")
	local lenght = handle:read("*a")
	handle:close()
	return lenght
end

function conky_musicPosition()
	local handle = io.popen("playerctl position")
	local progress = handle:read("*a")
	handle:close()
	local minutes=tostring(math.floor(tonumber(progress)/60))
	local seconds=tostring(math.floor(tonumber(progress))%60)
	if string.len(seconds) == 1 then
		seconds = "0"..seconds
	end
	return minutes..":"..seconds
end

function conky_musicRawLenght()
	local handle = io.popen("playerctl metadata --format '{{ duration(mpris:length) }}'")
	local lenght = handle:read("*a")
	handle:close()
	raw_lenght = 0
	for token in string.gmatch(lenght, "[^%s:]+") do
   		raw_lenght = 60*raw_lenght + tonumber(token)
	end
	return tonumber(raw_lenght)
end

function conky_musicRawPosition()
	local handle = io.popen("playerctl position")
	local progress = handle:read("*a")
	handle:close()
	return tonumber(progress)
end


function conky_musicProgress()
	return 100*conky_musicRawPosition()/conky_musicRawLenght()
end