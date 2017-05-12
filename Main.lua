--Weapon Shop (Temporary Name) is a 2D practice game project written in lua in Love2D
require("global")
require("player")
require("debugy")
require("window_settings")
require("config")
require("dungeon")
require("adventurer")

function love.load()
  debug_msg_load()
  window_load()
  player_load()
  dungeon_load()
  adventurer_load()
end 

function love.update()
  debug2 = "fps: "..love.timer.getFPS()
  debug3 = "dungeon level: "..dungeon.level
  player_update()
  dungeon_update()
  adventurer_update()
  
end

function love.draw()
  
  window_draw()
  player_draw()
  dungeon_draw()
  adventurer_draw()
  
  debug_msg_draw()
end 


