--window settings
require("global")

function window_settings_load()
	love.window.setMode( shop.window_width , shop.window_height )
	love.window.setTitle( shop.window_title )
	love.graphics.setBackgroundColor(255, 255, 250)
end