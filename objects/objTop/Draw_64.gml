/// @description Insert description here
// You can write your code in this editor
if !global.menu && !global.options && global.controls && global.configOS == 0 {
	
}

if !global.menu && !global.options && global.controls && global.configOS == 1 {
	x = display_get_gui_width() - 20;
	y = display_get_gui_height() - 70;
	draw_self();
}

if !global.menu && !global.options && global.controls && global.configOS == 2 && isMobile {
	x = display_get_gui_width() - 85;
	y = display_get_gui_height() - 200;
	draw_self();
}