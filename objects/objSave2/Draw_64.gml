/// @description Insert description here
// You can write your code in this editor
if global.saves && (global.configOS == 0 || global.configOS == 1) {
	x = display_get_gui_width()/2;
	y = display_get_gui_height()/2 + 7;
	draw_self();
}

if global.saves && global.configOS == 2 {
	x = display_get_gui_width()/2;
	y = display_get_gui_height()/2 + 10;
	draw_self();
}