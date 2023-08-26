/// @description Insert description here
// You can write your code in this editor
if global.notification && (global.configOS == 0 || global.configOS == 1) {
	x = display_get_gui_width()/2;
	y = display_get_gui_height()/2 + 7;
	draw_self();
	draw_sprite_ext(sprNotification, 0, x, y - 45, .2, .2, 0, c_white, 1);
} else if global.notification && global.configOS == 2 {
	x = display_get_gui_width()/2;
	y = display_get_gui_height()/2 + 7;
	draw_self();
	draw_sprite_ext(sprNotification, 0, x, y - 120, .6, .6, 0, c_white, 1);
}