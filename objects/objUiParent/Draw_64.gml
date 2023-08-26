/// @description Insert description here
// You can write your code in this editor
if !global.menu && global.controls {
	x = display_get_gui_width() - view_x;
	y = display_get_gui_height() - view_y;
	draw_self();
}