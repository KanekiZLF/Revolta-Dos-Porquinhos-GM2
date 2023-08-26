/// @description Insert description here
// You can write your code in this editor
var _mouse = position_meeting(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), id);

if (_mouse && (global.gamepause || global.options) && mouse_check_button(mb_left)) {
	image_index = 3;
} else {
	image_index = 2;
}

if global.configOS == 2 {
	image_xscale = .6;
	image_yscale = .6;
}

if (_mouse && (global.gamepause || global.options) && mouse_check_button_released(mb_left)) {
	playSound = true;
	global.gamepause = false;
	global.options = false;
	global.audio = true;
}

if playSound {
	audio_play_sound(sndMenu_Sound_Forward, 1, 0);
	playSound = false;
}