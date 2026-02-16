local class = require 'code/lib/middleclass'

RCoin = class('RCoin')

function RCoin:initialize(x, y)
    self.x = x
    self.y = y

    self.radius = 28

    self.timeToLive = 6.5
end

function RCoin:update(dt)
    -- check if player is touching
    local dx = game.player.x - self.x
    local dy = game.player.y - self.y
    local d = math.sqrt(dx ^ 2 + dy ^ 2)
    if d < self.radius + game.player.radius then
        -- score
        game.score = game.score + 1

        -- sfx
        sounds.coin:stop()
        sounds.coin:play()

        self.to_delete = true
    end

    self.timeToLive = self.timeToLive - dt

    -- check for timeout
    if self.timeToLive < 0 then
        self.to_delete = true
    end
end

function RCoin:draw()
    -- make coin flash when it's about to disappear
    if self.timeToLive > 1.5 or math.sin(5 * self.timeToLive * 2 * math.pi) > 0 then
        love.graphics.setColor(255, 255, 255)
        love.graphics.draw(images.rcoin, self.x, self.y, 0, 1, 1, 28, 28)
    end
end

LCoin = class('LCoin')

function LCoin:initialize(x, y)
    self.x = x
    self.y = y

    self.radius = 28

    self.timeToLive = 6.5
end

function LCoin:update(dt)
    -- check if player is touching
    local dx = game.player.x - self.x
    local dy = game.player.y - self.y
    local d = math.sqrt(dx ^ 2 + dy ^ 2)
    if d < self.radius + game.player.radius then
        -- score
        game.score = game.score + 5

        -- sfx
        sounds.coin:stop()
        sounds.coin:play()

        self.to_delete = true
    end

    self.timeToLive = self.timeToLive - dt

    -- check for timeout
    if self.timeToLive < 0 then
        self.to_delete = true
    end
end

function LCoin:draw()
    -- make coin flash when it's about to disappear
    if self.timeToLive > 1.5 or math.sin(5 * self.timeToLive * 2 * math.pi) > 0 then
        love.graphics.setColor(255, 255, 255)
        love.graphics.draw(images.lcoin, self.x, self.y, 0, 1, 1, 28, 28)
    end
end

Coin = class('Coin')

function Coin:initialize(x, y)
    self.x = x
    self.y = y

    self.radius = 28

    self.timeToLive = 6.5
end

function Coin:update(dt)
    -- check if player is touching
    local dx = game.player.x - self.x
    local dy = game.player.y - self.y
    local d = math.sqrt(dx ^ 2 + dy ^ 2)
    if d < self.radius + game.player.radius then
        -- score
        game.score = game.score + 10

        -- sfx
        sounds.coin:stop()
        sounds.coin:play()

        self.to_delete = true
    end

    self.timeToLive = self.timeToLive - dt

    -- check for timeout
    if self.timeToLive < 0 then
        self.to_delete = true
    end
end

function Coin:draw()
    -- make coin flash when it's about to disappear
    if self.timeToLive > 1.5 or math.sin(5 * self.timeToLive * 2 * math.pi) > 0 then
        love.graphics.setColor(255, 255, 255)
        love.graphics.draw(images.coin, self.x, self.y, 0, 1, 1, 28, 28)
    end
end

SCoin = class('SCoin')

function SCoin:initialize(x, y)
    self.x = x
    self.y = y

    self.radius = 28

    self.timeToLive = 6.5
end

function SCoin:update(dt)
    -- check if player is touching
    local dx = game.player.x - self.x
    local dy = game.player.y - self.y
    local d = math.sqrt(dx ^ 2 + dy ^ 2)
    if d < self.radius + game.player.radius then
        -- score
        game.score = game.score + 20

        -- sfx
        sounds.coin:stop()
        sounds.coin:play()

        self.to_delete = true
    end

    self.timeToLive = self.timeToLive - dt

    -- check for timeout
    if self.timeToLive < 0 then
        self.to_delete = true
    end
end

function SCoin:draw()
    -- make coin flash when it's about to disappear
    if self.timeToLive > 1.5 or math.sin(5 * self.timeToLive * 2 * math.pi) > 0 then
        love.graphics.setColor(255, 255, 255)
        love.graphics.draw(images.scoin, self.x, self.y, 0, 1, 1, 28, 28)
    end
end
