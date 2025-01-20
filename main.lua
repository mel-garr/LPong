

push = require 'push'
class = require 'class'

require 'game_objects/paddle'
require 'game_objects/ball'


WINDOW_WIDTH = 1280
WINDOW_HEIGHT = 720

VIRTUAL_WIDTH = 432
VIRTUAL_HEIGHT = 243

PADDLE_WIDTH = 2
PADDLE_HEIGH = 30
BALL_R = 3
PADDLE_SPEED = 30
BALL_SPEED = 60


function love.load()
    love.graphics.setDefaultFilter('nearest', 'nearest')
    a = math.randomseed(os.time())
    push:setupScreen(VIRTUAL_WIDTH, VIRTUAL_HEIGHT, WINDOW_WIDTH, WINDOW_HEIGHT, {
        fullscreen = false,
        resizable = true,
        vsync = true,
    })
    print("Game started!")

        P1 = Paddle(20, VIRTUAL_HEIGHT / 2, PADDLE_WIDTH, PADDLE_HEIGH)
        P2 = Paddle(VIRTUAL_WIDTH - 30, VIRTUAL_HEIGHT / 2, PADDLE_WIDTH, PADDLE_HEIGH)
        B1 = Ball( BALL_R)
        game_stat = 'stop'
    end

function love.keypressed(key)
    print (key)
    if key == 'escape' then
        love.event.quit()
    elseif key == 'space' then
        if game_stat == 'stop' then
            game_stat = 'start'
        else 
            game_stat = 'stop'
        end
    end

end

function love.update(dt)
    if game_stat == 'start' then
        if love.keyboard.isDown('q') then
            P1.dy = -PADDLE_SPEED
        elseif love.keyboard.isDown('a') then
            P1.dy = PADDLE_SPEED
        else
            P1.dy = 0
        end

        if love.keyboard.isDown('up') then
            P2.dy = -PADDLE_SPEED
        elseif love.keyboard.isDown('down') then
            P2.dy = PADDLE_SPEED
        else
            P2.dy = 0
        end
    
        P1:update(dt)
        P2:update(dt)
        B1:update(dt)
    end
    -- print ( math.randomseed(os.time()))

end

function love.draw()
    push:start()

    love.graphics.clear(192,192,192,0.5)
    love.graphics.printf("Hello World!",  0 , 30, VIRTUAL_WIDTH, 'center')
    love.graphics.printf(game_stat, 0, 60, VIRTUAL_WIDTH, 'center')
    P1:render()
    P2:render()
    B1:render()


    -- love.graphics.rectangle('fill', 20, VIRTUAL_HEIGHT /2 - 10, 5, 10)
    -- love.graphics.rectangle('fill', VIRTUAL_WIDTH - 25, VIRTUAL_HEIGHT /2 - 10, 5, 10)
    -- love.graphics.rectangle('fill', VIRTUAL_WIDTH/2 - 5, VIRTUAL_HEIGHT /2 - 5, 10, 10)

    -- love.graphics.printf("Hello World!", 0, VIRTUAL_HEIGHT / 2 - 6, VIRTUAL_WIDTH, "center")


    push:finish()
    end

