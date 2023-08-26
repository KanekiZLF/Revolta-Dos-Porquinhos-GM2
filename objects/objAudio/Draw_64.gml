/// @description Insert description here
// You can write your code in this editor
if global.gamepause && (global.configOS == 0 || global.configOS == 1) {
	x = display_get_gui_width()/2;
	y = display_get_gui_height()/2 - 7;
	draw_self();
} else if global.gamepause && global.configOS == 2 {
	x = display_get_gui_width()/2;
	y = display_get_gui_height()/2 - 40;
	draw_self();
}

if global.options && (global.configOS == 0 || global.configOS == 1) {
	x = display_get_gui_width()/2;
	y = display_get_gui_height()/2 - 18;
	draw_self();
} else if global.options && global.configOS == 2 {
	x = display_get_gui_width()/2;
	y = display_get_gui_height()/2 - 66;
	draw_self();
}