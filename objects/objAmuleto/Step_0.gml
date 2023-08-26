/// @description Insert description here
// You can write your code in this editor

if global.configOS == 2 {
	image_xscale = 2;
	image_yscale = 2;
	x = 60;
	y = 215;
}


if global.amulet >= 1 {
	image_index = 0;
	image_alpha = 1;
} else {
	image_index = 1;
	image_alpha = 0.5;
}