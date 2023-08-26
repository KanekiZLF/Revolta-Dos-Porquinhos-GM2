/// @description Insert description here
// You can write your code in this editor
var _mouse = position_meeting(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), id);

if global.configOS == 2 {
	image_xscale = .6;
	image_yscale = .6;
}

if (_mouse && mouse_check_button_pressed(mb_left)) && !global.options && !global.menu && !global.audio && global.controls && !global.gameover && !global.creditos {
	playSound = true;
	global.pause = !global.pause;
	global.gamepause = !global.gamepause;
}

if playSound && global.gamepause {
	audio_play_sound(sndMenu_Sound_PauseIn, 1, 0);
	playSound = false;
}

if playSound && !global.pause {
	audio_play_sound(sndMenu_Sound_PauseOut, 1, 0);
	playSound = false;
}
