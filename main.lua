

WINDOW_WIDTH = 1280
WINDOW_HEIGHT = 720

function love.load()
    love.window.setMode(1280, 720, {
        fullscreen = false,
        resizable = false,
        vsync = true,
    })
    end


function love.update(dt)
    end

function love.draw()

    love.graphics.printf("Hello World!", 400, 300, 100, "center")

    end