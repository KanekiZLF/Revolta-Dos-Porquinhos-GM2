/// @description Insert description here
// You can write your code in this editor
if global.notification && (global.configOS == 0 || global.configOS == 1) {
	x = display_get_gui_width()/2 + 50;
	y = display_get_gui_height()/2 + 35;
	draw_self();
} else if global.notification && global.configOS == 2 { 
	x = display_get_gui_width()/2 + 150;
	y = display_get_gui_height()/2 + 70;
	draw_self();
}