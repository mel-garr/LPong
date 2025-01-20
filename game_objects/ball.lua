Ball = class{}

function Ball:init(r)
    self.x = VIRTUAL_WIDTH / 2 - r 
    self.y = VIRTUAL_HEIGHT / 2 - r

    self.r = r
    
    self.dx = math.random(2) == 1 and 100 or -100 
    self.dy = math.random(-50, 50)  
    -- self.dy = BALL_SPEED

end

function Ball:update(dt)
    if self.x + self.r >= VIRTUAL_WIDTH or self.x - self.r <= 0 then 
        self.dx = -self.dx 
    elseif self.y + self.r >= VIRTUAL_HEIGHT or self.y - self.r <= 0 then 
            self.dy = -self.dy 
    end
    self.x = self.x + self.dx * dt
    self.y = self.y + self.dy * dt


end

function Ball:reset()

    self.dx = math.random(2) == 1 and 100 or -100 

end

function Ball:render()
    love.graphics.circle('fill', self.x, self.y, self.r)
    end


    --  ballDX = math.random(2) == 1 and 100 or -100
    -- ballDY = math.random(-50, 50)
        