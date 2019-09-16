/// @description Desenha outline
/// @arg0 x
/// @arg1 y
/// @arg2 text
/// @arg3 color
/// @arg4 alpha
/// @arg5 size

var _x = argument0;
var _y = argument1;
var text = argument2;
var color = argument3;
var alpha = argument4;
var size = argument5;

draw_set_colour(color);

draw_set_alpha(alpha);

draw_text(x - size, y, text);
draw_text(x + size, y, text);
draw_text(x, y - size, text);
draw_text(x, y + size, text);

draw_text(x - size, y - size, text);
draw_text(x - size, y + size, text);
draw_text(x + size, y - size, text);
draw_text(x + size, y + size, text);

draw_set_alpha(1);