
local camera_x = 0
local prev_camera_x = 0

function refresh()
	camera_x = memory.readword(0xFFEE00)
	gui.text(10, 60, 'Camera advance: <' .. (camera_x - prev_camera_x) .. '>')
	prev_camera_x = camera_x
end

emu.registerafter(refresh)
