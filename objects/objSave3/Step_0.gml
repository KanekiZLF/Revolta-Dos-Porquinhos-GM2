/// @description Insert description here
// You can write your code in this editor
event_inherited();
scrDirecSaves();
depth = -y;

var _mouse = position_meeting(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), id);

if (_mouse && global.saves && mouse_check_button(mb_left)) {
	if direc = 6 {
		direc = 7; //<-- Stage
	} 
	
	else if direc = 4 {
		direc = 5;
	}
} else {
	if direc = 7 {
		direc = 6; //<-- Stage
	} 
	
	else if direc = 5 {
		direc = 4;
	}
}

if (_mouse && global.saves && mouse_check_button_released(mb_left)) {
	direc = 6;
	playSound = true;
	global.save1 = false; //<--Define este slot ativo
	global.save2 = false; //<--Define este slot ativo
	global.save3 = true; //<--Define este slot ativo
	
	if global.configOS == 0 || global.configOS == 1 {
		if global.save3 && !global.savesLoad {
			if (file_exists("saved3.save")) {
				global.notification = true;
			} else {
				global.controls = true;
				room_goto_next();
				scrSaveGame();
			}
		}
	
		if (file_exists("saved3.save")) && global.savesLoad {
			global.controls= true;
			objControle.alarm[0] = 1;
		}
	} else if global.configOS == 2 {
		global.controls = true;
		room_goto_next();
	}
	showMe = false;
	global.saves = false;
}

if playSound {
	audio_play_sound(sndMenu_Sound_Forward, 1, 0);
	playSound = false;
}