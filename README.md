# LPong
making Pong using lua

#basics f to work with lua

- love.load() => to load/init data at the start of the game 
- love.update(dt) => to update the game loop => where everything happend
- love.draw() => to draw everything in the end of the game loop after the update do most of the work

- love.graphics.printf('text', x(x from where to start writing), y(//), width(the width of the box where we will right), align (center , left , right, the place in the box that created in the width)) // can take less argument (no wsth)
- love.window.setMode(width, height, params) dimention of the window , width/height are obvious , the most used params are:
     => resizable (bool) if we can resiz the window
     => vsync : vertical sync 1(enable) 0 desable -1 depending of the systheme
     => fullscreen (bool) false by default synchronizes the frame rate of the agame with the refresh rate of the monitor


love.window.setMode(width, height, params)