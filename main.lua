local rect_x, rect_y = 10, 10
local rect_width, rect_height = 100, 30
local rect_verts = {}
local rect_speed = 200 -- 20 pixels per second

function love.update(dt)
    if love.keyboard.isDown("right") then
        rect_x = rect_x + rect_speed * dt
    end

    if love.keyboard.isDown("left") then
        rect_x = rect_x - rect_speed * dt
    end


    rect_verts = rectangle_verts(rect_x, rect_y, rect_width, rect_height)
end

function love.draw()
    love.graphics.polygon("fill", rect_verts)
end

function rectangle_verts(first_vertex_x, first_vertex_y, width, height)
    local second_x = first_vertex_x;
    local second_y = first_vertex_y + height;

    local third_x = first_vertex_x + width;
    local third_y = second_y;

    local fourth_x = third_x;
    local fourth_y = first_vertex_y;

    return {
        first_vertex_x, first_vertex_y,
        second_x, second_y,
        third_x, third_y,
        fourth_x, fourth_y
    }
end
