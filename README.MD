# Snake Game

Snake game made in Lua [LOVE framework](https://love2d.org/)

Whole project is based on CS50 youtube videos:

* [part 1](https://youtu.be/ld_xcXdRez4) * [part
2](https://youtu.be/UOzRK3p26Dw)

Original project files are available in [Colton's
repository](https://github.com/coltonoscopy/snake50).

## Major changes in comparison to the original version

All tiles are now rendered from sprite sheet file instead of plain
colored squares:

* In order this to work there is now some code to handle specific
rotation of snake images basing on direction of movement of each tile

* There are also linking tiles which provide smooth transition between
snake tiles during turns

* Added TILE_SNAKE_TAIL in order to render it using different image

* Starting snake is now 3 tiles long to avoid graphical glitches as only
snake body has curved variants

* Added 5 graphic variants of stone obstacle which are picked randomly
during level initialization

* All tile images were created from scratch in GIMP (maybe with a little
visual help from Google Graphics =) )

### Misc

* Starting cell row is now restricted from stone generation to avoid
risk of instant collision with the snake after the game starts

* Added option to mute/unmute music using M key

* Added option to switch drawing of grid lines using G key

* Lives are now displayed using heart images

* Volumes of game sounds were adjusted to be more balanced

* New level threshold function was changed to cubic expression in order
to make the level transition less frequent

* Formula for snake speed was updated, so it moves faster at the
beginning, but doesn't accelerate that much in the higher levels

## Knows bugs

Too quick player input could result in player death as `snakeMoving` is
updating a couple of times between snake moves one tile, e.g.
`snakeMoving` could change its value from `LEFT` to `UP` and finally to
`RIGHT` before snake even moves by one tile which will result in instant
collision with the rest of snake body.
