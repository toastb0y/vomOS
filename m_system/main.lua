-- load in the dkjson library
local json = require("m_libraries/dkjson")

function love.load()
    -- read json and decode
    local data = love.filesystem.read("userdata.json")
    local userdata = json.decode(data)

    canEsc = true
   
    font = love.graphics.newFont("fonts/PetitePx.ttf", 20)
    love.graphics.setFont(font)
    
    love.graphics.newImage("m_assets/vom_icon.png")
    love.graphics.newImage("m_assets/pointerW.png")
    love.graphics.newImage("m_assets/pointerB.png")

    local data = love.image.newImageData("m_assets/pointerW.png")
    cursor = love.mouse.newCursor(data, 0, 0)
    love.mouse.setCursor(cursor)

    love.window.setIcon(love.image.newImageData("m_assets/vom_icon.png"))
    love.window.setTitle("ttt")
end

function love.update(dt)
    
end

function love.draw()
    love.graphics.setBackgroundColor(0, 0, 0.4)
    
    love.graphics.print("vomOS test window", 0, 0)
    love.graphics.print("Press F11 to toggle fullscreen", 0, 10)
    love.graphics.print("Press ESC to quit", 0, 20)
end

function love.keypressed(key)
    if key == "f11" then
        if fscreen == false then
            love.window.setFullscreen(true)
            fscreen = true
        else
            love.window.setFullscreen(false)
            fscreen = false
        end
    end

    if key == "escape" then
        if canEsc == true then
            love.event.quit()
        end
    end
end
