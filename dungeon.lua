--dungeon.lua
require("global")

dungeon = {}
dungeon.edge = {top = 0,
				bottom = shop.window_height,
				left = shop.window_width/2,
				right = shop.window_width}
dungeon.color = {255,255,255,255}
dungeon.level = 1

function dungeon_load()
	wall_piece = shop.default_8x8
	wall_width = wall_piece:getWidth()
	wall_height = wall_piece:getHeight()
end 

function dungeon_update()
end 

function dungeon_draw() 
	draw_dungeon_walls()
end 

function draw_dungeon_walls()
	love.graphics.setColor(dungeon.color)
	pieces_y = shop.window_height/wall_height
	pieces_x = shop.window_width/2/wall_width
	doors = make_doors(pieces_x)

	for i = 0, pieces_x do 
		for j = 0, pieces_y do 
			pos = {x = dungeon.edge.left + i*wall_width , y = dungeon.edge.top + j*wall_height}
			if check_if_on_edge( wall_piece , pos.x , pos.y , dungeon.edge ) then 
				if check_if_doors(i , doors) then 
					love.graphics.draw( wall_piece , pos.x , pos.y ) 
				end 
			end 
		end 
	end 
end 

function make_doors(x)
	door_piece = {}
	door_width = 8
	for i=x/2 - door_width/2 , x/2 + door_width/2 do 
		table.insert( door_piece , i )
	end 
	return door_piece
end 

function check_if_doors(i , doors)
	for key,door in ipairs(doors) do 
		if i == door then 
			return false
		end 
	end 
	return true 
end 

function check_if_on_edge(img , x , y , edges)
	if edges.left == x then 
		return true 
	elseif edges.right - img:getWidth() == x then 
		return true 
	elseif edges.top == y then 
		return true 
	elseif edges.bottom - img:getHeight() == y then 
		return true 
	else 
		return false 
	end 
end 
return dungeon