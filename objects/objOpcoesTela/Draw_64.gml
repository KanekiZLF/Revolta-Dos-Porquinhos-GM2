/// @description Insert description here
// You can write your code in this editor
if global.audio && (global.configOS == 0 || global.configOS == 1) {
	x = display_get_gui_width()/2;
	y = display_get_gui_height()/2 + 7;
	draw_self();
} else if global.audio && global.configOS == 2 {
	x = display_get_gui_width()/2;
	y = display_get_gui_height()/2 + 7;
	draw_self();
}

if global.controles && (global.configOS == 0 || global.configOS == 1) {
	x = display_get_gui_width()/2;
	y = display_get_gui_height()/2 + 7;
	draw_self();
	draw_sprite_ext(sprControlls, 0, x, y, .1, .1, 0, c_white, 1);
} else if global.controles && global.configOS == 2 {
	x = display_get_gui_width()/2;
	y = display_get_gui_height()/2 + 7;
	draw_self();
	draw_sprite_ext(sprControlls, 0, x, y, .6, .6, 0, c_white, 1);
}
