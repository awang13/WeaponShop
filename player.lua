--player.lua
require("global")

player = {}
player.moving_state = "idle"
player.speed = 5
player.color = {255,0,0,255}
player.image = shop.default_64x64

function player_load()
	spawn_player()
end 

function player_update()
	if player.moving_state == "move_up" then 
		for i = 1, 2 do
			if player.position.y > 0 then
				player.position.y = player.position.y - player.speed
			end 
		end 
	elseif player.moving_state == "move_down" then 
		for i = 1, 2 do
			if player.position.y < shop.window_height - player.height then
				player.position.y = player.position.y + player.speed
			end 
		end 
	elseif player.moving_state == "move_left" then 
		for i = 1, 2 do
			if player.position.x > 0 then
				player.position.x = player.position.x - player.speed
			end 
		end 
	elseif player.moving_state == "move_right" then 
		for i = 1, 2 do
			if player.position.x < shop.window_width/2 - player.width then
				player.position.x = player.position.x + player.speed
			end 
		end 
	end 
end 

function player_draw()
	love.graphics.setColor(player.color)
	love.graphics.draw( player.image , player.position.x , player.position.y )
end 

function spawn_player()
	player.width = player.image:getWidth()
	player.height = player.image:getHeight()
	player.position = {x = shop.window_width/4 - player.width/2 , y = shop.window_height/2 - player.height/2}
end

return player