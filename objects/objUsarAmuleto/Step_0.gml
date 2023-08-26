/// @description Insert description here
// You can write your code in this editor
var _mouse = position_meeting(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), id);
global.amulet = clamp(global.amulet, 0, 3);

if global.configOS == 0 || global.configOS == 1 {
	image_xscale = .18;
	image_yscale = .18;
} else if global.configOS == 2 {
	image_xscale = .6;
	image_yscale = .6;
}

if (_mouse && global.gameover && mouse_check_button(mb_left)) {
	showMe = true;
	image_index = 5;
	
} else {
	image_index = 4;
}

if (_mouse && global.gameover && mouse_check_button_released(mb_left)) && showMe && global.amulet >= 1 {
	audio_stop_all();
	objControle.playSound = true;
	var _player = instance_place(objPlayer.x, objPlayer.y, objPlayer);
	
	if(_player) {
		with(_player) {
			//Deixa o player imune
			alarm[0] = 120;
			isDead = false;
			playSound = false;
			global.lifes = 3;
			puloInimigo = -3;
			alturaPulo = pulo;
	
			//Define sprite da Direta
			if image_xscale = 1 {
				direc = 0;
			}
			//Define sprite da Esquerda
			if image_xscale = -1 {
				direc = 1;
			}	
		}
		showMe = false;
		global.gameover = false;
	}
}

if (_mouse && mouse_check_button_released(mb_left)){
	playSound = true;
	used = true;
	
	if playSound && global.amulet >= 1 && used {
		audio_play_sound(sndMenu_Sound_Forward, 1, 0);
		global.amulet -= 1;
		objLifesHit.direc = 0;
		objLifesHit.alpha = 1;
		playSound = false;
		used = false;
	}else if playSound && global.amulet <= 0 && global.gameover {
		audio_play_sound(sndMenu_Sound_Error, 1, 0);
		playSound = false;
	}
}

