--window settings
require("global")

function window_load()
	love.window.setMode( shop.window_width , shop.window_height )
	love.window.setTitle( shop.window_title )
	love.graphics.setBackgroundColor(0, 0, 0)
end

function window_update()
end 

function window_draw()
	love.graphics.line( shop.window_width/2 , 0 , shop.window_width/2 , shop.window_height )
end 