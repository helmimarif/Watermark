-- Watermark text
servername = "SERVER_NAME"

-- x and y offset (starting at the top left corner)
-- Default: 0.005, 0.001
offset = {x = 0.880, y = 0.040}

-- Text RGB Color
-- Default: 64, 64, 64 (gray)
rgb = {r = 64, g = 64, b = 64}

-- Text transparency
-- Default: 255
alpha = 255

-- Text scale
-- Default: 0.4
scale = 0.6

-- Text Font
-- 0 - 5 possible
-- Default: 1
font = 1

-- Rainbow Text
bringontherainbows = true

-- CODE
Citizen.CreateThread(function()
	while true do
		Wait(1)

		if bringontherainbows then
			rgb = RGBRainbow(1)
		end
		SetTextColour(rgb.r, rgb.g, rgb.b, alpha)

		SetTextFont(font)
		SetTextScale(scale, scale)
		SetTextWrap(0.0, 1.0)
		SetTextCentre(false)
		SetTextDropshadow(2, 2, 0, 0, 0)
		SetTextEdge(1, 0, 0, 0, 205)
		SetTextEntry("STRING")
		AddTextComponentString(servername)
		DrawText(offset.x, offset.y)
	end
end)

function RGBRainbow(frequency)
    local result = {}
    local curtime = GetGameTimer() / 1000

    result.r = math.floor(math.sin(curtime * frequency + 0) * 127 + 128)
    result.g = math.floor(math.sin(curtime * frequency + 2) * 127 + 128)
    result.b = math.floor(math.sin(curtime * frequency + 4) * 127 + 128)

    return result
end
