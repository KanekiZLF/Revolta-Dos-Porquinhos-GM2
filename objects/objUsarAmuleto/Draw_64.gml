/// @description Insert description here
// You can write your code in this editor
if global.gameover && (global.configOS == 0 || global.configOS == 1) {
	var _w = display_get_gui_width()/2;
	var _h = display_get_gui_height()/2 - 20;
	
	x = _w;
	y = _h;
	draw_self();
} else if global.gameover && global.configOS == 2 {
	var _w = display_get_gui_width()/2;
	var _h = display_get_gui_height()/2 - 64;
	
	x = _w;
	y = _h;
	draw_self();
}