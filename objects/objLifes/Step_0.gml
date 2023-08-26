/// @description Insert description here
// You can write your code in this editor
global.lifes = clamp(global.lifes, 0, 3);

if global.configOS == 2 {
	image_xscale = 3;
	image_yscale = 3;
	x = 74;
	y = 56;
}