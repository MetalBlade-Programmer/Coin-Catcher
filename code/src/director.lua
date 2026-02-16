local class = require 'code/lib/middleclass'

Director = class('Director')

function Director:initialize()
    self.lastCoinTime = love.timer.getTime()
end

function Director:update(dt)
    -- add a coin?
    if #game.coins.contents < 6 then
        local currentTime = love.timer.getTime()

        if currentTime - self.lastCoinTime > 0.5 and chance(0.05) then
            local x = math.random(30, nativeCanvasWidth - 30)
            local y = math.random(30, nativeWindowHeight - 30)
            game.coins:add(RCoin:new(x, y))
            self.lastCoinTime = currentTime
        end
    end

    if #game.coins.contents < 5 then
        local currentTime = love.timer.getTime()

        if currentTime - self.lastCoinTime > 0.5 and chance(0.05) then
            local x = math.random(30, nativeCanvasWidth - 30)
            local y = math.random(30, nativeWindowHeight - 30)
            game.coins:add(LCoin:new(x, y))
            self.lastCoinTime = currentTime
        end
    end

    if #game.coins.contents < 5 then
        local currentTime = love.timer.getTime()

        if currentTime - self.lastCoinTime > 0.5 and chance(0.05) then
            local x = math.random(30, nativeCanvasWidth - 30)
            local y = math.random(30, nativeWindowHeight - 30)
            game.coins:add(Coin:new(x, y))
            self.lastCoinTime = currentTime
        end
    end

    if #game.coins.contents < 4 then
        local currentTime = love.timer.getTime()

        if currentTime - self.lastCoinTime > 0.5 and chance(0.05) then
            local x = math.random(30, nativeCanvasWidth - 30)
            local y = math.random(30, nativeWindowHeight - 30)
            game.coins:add(SCoin:new(x, y))
            self.lastCoinTime = currentTime
        end
    end
end