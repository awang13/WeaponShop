--player.lua
require("global")

player = {}


function player_load()
	spawn_player()
end 

function player_update()
end 

function player_draw()
	love.graphics.draw( img , player.position.x , player.position.y )
end 

function spawn_player()
	img = love.graphics.newImage("materials/default/grey_box_64x64.png")
	player.width = img:getWidth()
	player.height = img:getHeight()
	player.position = {x = shop.window_width/2 - player.width/2 , y = shop.window_height/2 - player.height/2}
end

return player