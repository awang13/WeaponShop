--debugy
function load_debug_msg()
	debug1 = ""
	debug2 = ""
	debug3 = ""
	debug4 = ""
	debug5 = ""
	debug6 = ""
	debug7 = ""
	debug8 = ""
	debug9 = ""
end 

function update_debug_msg()
	love.graphics.setColor(0, 0, 0, 255)
	love.graphics.print(debug1,10,10)
	love.graphics.print(debug2,10,25)
	love.graphics.print(debug3,10,40)
	love.graphics.print(debug4,10,55)
	love.graphics.print(debug5,10,70)
	love.graphics.print(debug6,10,85)
	love.graphics.print(debug7,10,100)
	love.graphics.print(debug8,10,115)
	love.graphics.print(debug9,10,130)
end