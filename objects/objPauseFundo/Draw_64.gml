/// @description Insert description here
// You can write your code in this editor
if global.pause {
	draw_set_alpha(.3);
	draw_set_color(c_black);
	draw_rectangle(0,0,display_get_width(),display_get_gui_height(),false);
	draw_set_alpha(1);
	draw_set_color(c_white);
}

if global.gameover {
	draw_set_alpha(.3);
	draw_set_color(c_black);
	draw_rectangle(0,0,display_get_width(),display_get_gui_height(),false);
	draw_set_alpha(1);
	draw_set_color(c_white);
}