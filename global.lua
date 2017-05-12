--global.lua
--creating and load necessary global values in beginning
shop = {}
shop.window_width = 800
shop.window_height = 600
shop.window_title = "Weapon Shop v0.1"
shop.default_64x64 = love.graphics.newImage("materials/default/box_64x64.png")
shop.default_8x8 = love.graphics.newImage("materials/default/box_8x8.png")

return shop
