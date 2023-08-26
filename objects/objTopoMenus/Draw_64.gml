/// @description Insert description here
// You can write your code in this editor
if global.options && (global.configOS == 0 || global.configOS == 1) {
	image_index = 8;
	x = display_get_gui_width()/2;
	y = display_get_gui_height()/2 - 41;
	draw_self();
} else if global.options && global.configOS == 2 {
	image_index = 8;
	image_xscale = .6;
	image_yscale = .6;
	x = display_get_gui_width()/2;
	y = display_get_gui_height()/2 - 136;
	draw_self();
}

if global.controles && (global.configOS == 0 || global.configOS == 1) {
	image_index = 6;
	x = display_get_gui_width()/2;
	y = display_get_gui_height()/2 - 41;
	draw_self();
} else if global.controles && global.configOS == 2 {
	image_index = 6;
	image_xscale = .6;
	image_yscale = .6;
	x = display_get_gui_width()/2;
	y = display_get_gui_height()/2 - 136;
	draw_self();
}

if global.saves && !global.newgame && (global.configOS == 0 || global.configOS == 1) {
	image_index = 1;
	x = display_get_gui_width()/2;
	y = display_get_gui_height()/2 - 41;
	draw_self();
} else if global.saves && !global.newgame && global.configOS == 2 {
	image_index = 1;
	image_xscale = .6;
	image_yscale = .6;
	x = display_get_gui_width()/2;
	y = display_get_gui_height()/2 - 136;
	draw_self();
}

if global.creditos && (global.configOS == 0 || global.configOS == 1) {
	image_index = 7;
	x = display_get_gui_width()/2;
	y = display_get_gui_height()/2 - 57;
	draw_self();
} else if global.creditos && global.configOS == 2 {
	image_index = 7;
	image_xscale = .6;
	image_yscale = .6;
	x = display_get_gui_width()/2;
	y = display_get_gui_height()/2 - 190;
	draw_self();
}

if global.saves && global.newgame && (global.configOS == 0 || global.configOS == 1) {
	image_index = 0;
	x = display_get_gui_width()/2;
	y = display_get_gui_height()/2 - 41;
	draw_self();
} else if global.saves && global.newgame && global.configOS == 2 {
	image_index = 0;
	image_xscale = .6;
	image_yscale = .6;
	x = display_get_gui_width()/2;
	y = display_get_gui_height()/2 - 136;
	draw_self();
}

if global.gamepause && (global.configOS == 0 || global.configOS == 1) {
	image_index = 2;
	x = display_get_gui_width()/2;
	y = display_get_gui_height()/2 - 57;
	draw_self();
} else if global.gamepause && global.configOS == 2 {
	image_index = 2;
	image_xscale = .6;
	image_yscale = .6;
	x = display_get_gui_width()/2;
	y = display_get_gui_height()/2 - 188;
	draw_self();
}

if global.audio && (global.configOS == 0 || global.configOS == 1) {
	image_index = 4;
	x = display_get_gui_width()/2;
	y = display_get_gui_height()/2 - 41;
	draw_self();
} else if global.audio && global.configOS == 2 {
	image_index = 4;
	image_xscale = .6;
	image_yscale = .6;
	x = display_get_gui_width()/2;
	y = display_get_gui_height()/2 - 136;
	draw_self();
}

