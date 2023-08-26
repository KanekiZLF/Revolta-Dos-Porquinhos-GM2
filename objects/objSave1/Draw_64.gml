/// @description Insert description here
// You can write your code in this editor
if global.saves && (global.configOS == 0 || global.configOS == 1){
	var _w = display_get_gui_width()/2;
	var _h = display_get_gui_height()/2 - 18;
	
	x = _w;
	y = _h;
	draw_self();
}

if global.saves && global.configOS == 2 {
	x = display_get_gui_width()/2;
	y = display_get_gui_height()/2 - 66;
	draw_self();
}