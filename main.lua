img_tile = love.graphics.newImage("tile_example.png")
img_tile_selected = love.graphics.newImage("tile_selected.png")

tile_size = 128
tile_quarter = tile_size / 4
tile_half = tile_size / 2

screen_width = 1600
screen_heigth = 900

center = screen_width / 2 - tile_half

map = {
	[1] = {
		[1] = {1, 1, 1, 1, 1},
		[2] = {1, 1, 1, 1, 1},
		[3] = {1, 1, 1, 1, 1},
		[4] = {1, 1, 1, 1, 1},
		[5] = {1, 1, 1, 1, 1},
	},
	[2] = {
		[1] = {1, 1, 1, 1, 1},
		[2] = {1, 1, 1, 1, 1},
		[3] = {1, 1, 1, 1, 1},
		[4] = {1, 1, 1, 1, 1},
		[5] = {1, 1, 1, 1, 1},
	},
	[3] = {
		[1] = {1, 1, 1, 1, 1},
		[2] = {1, 1, 1, 1, 1},
		[3] = {1, 1, 1, 1, 1},
		[4] = {1, 1, 1, 1, 1},
		[5] = {1, 1, 1, 1, 1},
	},
	[4] = {
		[1] = {1, 1, 1, 1, 1},
		[2] = {1, 1, 1, 1, 1},
		[3] = {1, 1, 1, 1, 1},
		[4] = {1, 1, 1, 1, 1},
		[5] = {1, 1, 1, 1, 1},
	},
	[5] = {
		[1] = {1, 1, 1, 1, 1},
		[2] = {1, 1, 1, 1, 1},
		[3] = {1, 1, 1, 1, 1},
		[4] = {1, 1, 1, 1, 1},
		[5] = {1, 1, 1, 1, 1},
	}
}

function love.load()

	love.window.setTitle("TEST 3D ISO")
	love.window.setMode(screen_width, screen_heigth)
end

function love.update(dt)
end

function love.draw()

	for x = 1, 5 do
		for y = 1, 5 do
			for z = 1, 5 do
				local px = center + (2 * x - 2 * y) * tile_quarter
				local py = x * tile_quarter + y * tile_quarter + tile_half * (5 - z)
				love.graphics.draw(img_tile, px, py)
			end
		end
	end
end