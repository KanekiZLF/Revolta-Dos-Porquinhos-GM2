/// @description Insert description here
// You can write your code in this editor
var _mouse = position_meeting(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), id);

if global.configOS == 0 || global.configOS == 1 {
	image_xscale = .18;
	image_yscale = .18;
} else if global.configOS == 2 {
	image_xscale = .6;
	image_yscale = .6;
}

if (_mouse && global.gameover && mouse_check_button(mb_left)) {
	showMe = true;
	image_index = 1;
	
} else {
	image_index = 0;
}

if (_mouse && global.gameover && mouse_check_button_released(mb_left)) && showMe {
	showMe = false;
	if global.diamonds >= 5 {
		audio_play_sound(sndMenu_Sound_Forward, 1, 0);
		global.amulet += 1;
		global.diamonds -= 5;
	} else {
		playSound = true;
	}
}

if playSound && global.gameover {
	audio_play_sound(sndMenu_Sound_Error, 1, 0);
	playSound = false;
}