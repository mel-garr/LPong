

push = require 'push'
class = require 'class'

Paddle = require 'paddle'

WINDOW_WIDTH = 1280
WINDOW_HEIGHT = 720

VIRTUAL_WIDTH = 432
VIRTUAL_HEIGHT = 243


function love.load()
    love.graphics.setDefaultFilter('nearest', 'nearest')

        P1 = Paddle(20, VIRTUAL_HEIGHT / 2, 20, 30)
    -- love.window.setMode(1280, 720, {
    --     fullscreen = false,
    --     resizable = false,
    --     vsync = true,
    -- })

    push:setupScreen(VIRTUAL_WIDTH, VIRTUAL_HEIGHT, WINDOW_WIDTH, WINDOW_HEIGHT, {
        fullscreen = false,
        resizable = true,
        vsync = true,
    })
    end

function love.keypressed(key)
    if key == 'escape' then
        love.event.quit()
    end
end

function love.update(dt)
    end

function love.draw()
    push:start()
    
    love.graphics.clear(192,192,192,0.5)
    love.graphics.printf("Hello World!",  0 , 30, VIRTUAL_WIDTH, 'center')
    P1.render()

    -- love.graphics.rectangle('fill', 20, VIRTUAL_HEIGHT /2 - 10, 5, 10)
    -- love.graphics.rectangle('fill', VIRTUAL_WIDTH - 25, VIRTUAL_HEIGHT /2 - 10, 5, 10)
    -- love.graphics.rectangle('fill', VIRTUAL_WIDTH/2 - 5, VIRTUAL_HEIGHT /2 - 5, 10, 10)

    -- love.graphics.printf("Hello World!", 0, VIRTUAL_HEIGHT / 2 - 6, VIRTUAL_WIDTH, "center")


    push:finish()
    end