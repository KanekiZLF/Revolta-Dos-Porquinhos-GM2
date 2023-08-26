/// @description Insert description here
// You can write your code in this editor
if global.menu && !global.opening && (global.configOS == 0 || global.configOS == 1) {
	x = display_get_gui_width() - display_get_gui_width()/2;
	y = display_get_gui_height() - display_get_gui_height()/2 + 30;
	draw_self();
} else if global.menu && !global.opening && global.configOS == 2 {
	x = display_get_gui_width() - display_get_gui_width()/2;
	y = display_get_gui_height() - display_get_gui_height()/2 + 90;
	draw_self();
}