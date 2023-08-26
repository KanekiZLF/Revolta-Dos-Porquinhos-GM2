/// @description Insert description here
// You can write your code in this editor
if (global.saves || global.options) && global.configOS == 2 {
	image_xscale = .6;
	image_yscale = .6;
}

if (global.saves || global.options) && (global.configOS == 0 || global.configOS == 1) {
	image_xscale = .2;
	image_yscale = .2;
}