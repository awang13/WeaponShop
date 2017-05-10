--Weapon Shop (Temporary Name) is a 2D practice game project written in lua in Love2D
require("global")
require("player")
require("debugy")
require("window_settings")

function love.load()
  debug_msg_load()
  window_settings_load()
  player_load()
end 

function love.update()
  player_update()
  debug2 = "fps: "..love.timer.getFPS()
  debug3 = player.width
end

function love.draw()
  debug_msg_draw()
  player_draw()
end 

function love.keypressed(key, u)
  --Debug
  debug1 = "input = "..key
  
  if key == "w" then 
    --move up 
  end 

  if key == "a" then 
    --move left 
  end 

  if key == "s" then 
    --move down 
  end 

  if key == "d" then 
    --move right 
  end 

  if key == "space" then 
    --action 
  end 

  if key == "escape" then --set to whatever key you want to use
   	love.event.quit()
  end 		
end