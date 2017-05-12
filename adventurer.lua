--adventurer.lua
require("global")

adventurer = {}
adventurer.color = {255,255,0,255}
adventurer.image = shop.default_64x64
adventurer.width = adventurer.image:getWidth()
adventurer.height = adventurer.image:getHeight()

function adventurer_load()

end 

function adventurer_update()

end 

function adventurer_draw()
	love.graphics.setColor(adventurer.color)
	love.graphics.draw( adventurer.image , shop.window_width/2 , shop.window_height - adventurer.height )
end 

return adventurer 