--config.lua
require("global")
require("player")
function love.keypressed(key, u)
  --Debug
  debug1 = "input = "..key
  
  if key == "w" then 
    player.moving_state = "move_up" 

  elseif key == "a" then
    player.moving_state = "move_left"

  elseif key == "d" then
    player.moving_state = "move_right"

  elseif key == "s" then
    player.moving_state = "move_down"
  end 

  if key == "space" then 
    --action 
  end 

  if key == "escape" then --set to whatever key you want to use
   	love.event.quit()
  end 		
end

function love.keyreleased(key, u)
	if key == "w" or key == "a" or key == "s" or key == "d" then 
    if love.keyboard.isDown('w', 'a', 's', 'd') == false then
      player.moving_state = "idle"
    end
	end 
end 