# LPong
making Pong using lua

#basics f to work with lua

- love.load() => to load/init data at the start of the game 
- love.update(dt) => to update the game loop => where everything happend
- love.draw() => to draw everything in the end of the game loop after the update do most of the work

.graphique:
- love.graphics.printf('text', x(x from where to start writing), y(//), width(the width of the box where we will right), align (center , left , right, the place in the box that created in the width)) // can take less argument (no wsth)

     =  Love.graphics.setDefaultFilter(min, mag) => texture (default, nearest)
     =  love.graphics.newFont(path, size) to define a new type of font we will work with (the path , is the place of the font , and size is te madaf'KING' size hh)
     = love.graphics.setFont(name) to start with the font that we created using l..newfont
     = love.graphics.clear(r,g,b,a) , clear the screen with the rgba color good, to do after loop on the app (a stand for the alpha component, opacity)
     = love.graphics.rectangle(mode, x, y, width,heigh) render a rectangle , the mode is fill / line


.windows:
- love.window.setMode(width, height, params) dimention of the window , width/height are obvious , the most used params are:
     => resizable (bool) if we can resiz the window
     => vsync : vertical sync 1(enable) 0 desable -1 depending of the systheme
     => fullscreen (bool) false by default synchronizes the frame rate of the agame with the refresh rate of the monitor
     -texture:

.event:
- love.event.quit()  close the app
- love.keypressed(event): all the even given by an input to interact with the app

📢 to include a class in lua we do the folowing syntax:
name_we_will_work_with = require 'name_we_will_work_with_without the .lua'

📢 0.0.0  ading the lib push.lua to the work env
it doesn't do big thing in the begining butit will help in the long run
push will help me work with a virtual dimention instead ot the normale one, and it should aapt to any change depending on the enduser screen , one configuration for any screen
most used methods i will se are :
- push:setupScreen(virtualWidth, virtualHeight, windowWidth, windowHeight, options) instead of the love.window.setmode, from this step we will work with our virtual dimention instead of our normale ones
- push:start() push:finish() at the start of love.load() and at the end , they handle the rendering
- push:resize(width, height) update the size of windows dinymacly 


📌 creating and workng with class in lua

✔ to include a class in lua we do the folowing syntax:
name_we_will_work_with = require 'name_we_will_work_with_without the .lua'

✔ oop aren't really a part of lua , but some ppl created a lib 'class' to manage that


📌 randomiser math.lib
math.random(min, max) it gives a random num between min and max
math.randomise(num) it generate a random number depending on the number num
os.time() a creative move to generate a random num that we can use (in math.randomiser as var )



!!! VIRTUAL dimention setup calcul


