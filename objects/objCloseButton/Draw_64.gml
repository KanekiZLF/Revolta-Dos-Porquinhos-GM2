/// @description Insert description here
// You can write your code in this editor

if (global.saves || global.options) && (global.configOS == 0 || global.configOS == 1) {
	x = display_get_gui_width()/2 + 51;
	y = display_get_gui_height()/2 - 28;
	draw_self();
} else if (global.saves || global.options) && global.configOS == 2 {
	x = display_get_gui_width()/2 + 154;
	y = display_get_gui_height()/2 - 80;
	draw_self();
}

if global.gameover && (global.configOS == 0 || global.configOS == 1) {
	x = display_get_gui_width()/2 + 60.5;
	y = display_get_gui_height()/2 - 28;
	draw_self();
} else if global.gameover && global.configOS == 2 {
	x = display_get_gui_width()/2 + 182;
	y = display_get_gui_height()/2 - 80;
	draw_self();
}

if global.gamepause && (global.configOS == 0 || global.configOS == 1) {
	x = display_get_gui_width()/2 + 58;
	y = display_get_gui_height()/2 - 42;
	draw_self();
} else if global.gamepause && global.configOS == 2 {
	x = display_get_gui_width()/2 + 175;
	y = display_get_gui_height()/2 - 120;
	draw_self();
}

if (global.audio || global.controles) && (global.configOS == 0 || global.configOS == 1) {
	x = display_get_gui_width()/2 + 78;
	y = display_get_gui_height()/2 - 28;
	draw_self();
} else if (global.audio || global.controles) && global.configOS == 2 {
	x = display_get_gui_width()/2 + 235;
	y = display_get_gui_height()/2 - 80;
	draw_self();
}

if global.creditos && (global.configOS == 0 || global.configOS == 1) {
	x = display_get_gui_width()/2 + 84.5;
	y = display_get_gui_height()/2 - 42;
	draw_self();
} else if global.creditos && global.configOS == 2 {
	x = display_get_gui_width()/2 + 255;
	y = display_get_gui_height()/2 - 110;
	draw_self();
}
