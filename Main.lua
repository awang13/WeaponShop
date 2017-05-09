--Weapon Shop (Temporary Name) is a 2D practice game project written in lua in Love2D
require("debugy")
require("window_settings")

function love.load()
  load_debug_msg()
  load_window_settings()

  img = love.graphics.newImage("materials/default/grey_box_64x64.png")
end 

function love.update()
  debug2 = "fps: "..love.timer.getFPS()
end

function love.draw()

  update_debug_msg()

  love.graphics.draw( img, 0, 100 )
end 

function love.keypressed(key, u)
  --Debug
  debug1 = "input = "..key
  if key == "escape" then --set to whatever key you want to use
   	love.event.quit()
  end 		
end