Paddle = class{}


function Paddle:init(x, y, width, heigh)
    self.x = x
    self.y = y
    self.width = width
    self.heigh = heigh
    self.dy = 0



end

function Paddle:update(dt)
    if self.dy < 0 then
        self.y = math.max(0, self.y + self.dy * dt)
    else
        self.y = math.min(VIRTUAL_HEIGHT - self.heigh, self.y + self.dy * dt)
    end

end

function Paddle:render()
    love.graphics.rectangle('fill', self.x, self.y, self.width, self.heigh)
end