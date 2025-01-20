Ball = class{}

function Ball:init(x, y, r)
    self.x = x
    self.y = y
    self.r = r
    
    -- self.
    -- self.dy = BALL_SPEED

end

function Ball:update(dt)
    
end

function Ball:reset()

end

function Ball:render()
    love.graphics.circle('fill', self.x, self.y, self.r)
    end

        