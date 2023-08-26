/// @description Insert description here
// You can write your code in this editor
var _mouse = position_meeting(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), id);

if global.configOS == 2 {
	image_xscale = .6;
	image_yscale = .6;
}


// Fecha a tela Menu
if global.menu {
	if (_mouse) {
		if (room == TelaInicial) {
			
		} else if (mouse_check_button_released(mb_left)) {
			global.menu = false;
			playSound = true;
		}
	}
}

// Fecha a tela Opções
if global.options {
	if (_mouse) {
		if (room == TelaInicial) {
			if (mouse_check_button_released(mb_left)) {
				global.options = false;
				global.menu = true;
				playSound = true;
			}
		} else if (mouse_check_button_released(mb_left)) {
			global.options = false;
			playSound = true;
		}
	}
}

if global.creditos {
	if (_mouse) {
		if (room == TelaInicial) {
			if (mouse_check_button_released(mb_left)) {
				global.options = true;
				global.creditos = false;
				objCreditosTexto.image_index = 0;
				playSound = true;
			}
		} else if (mouse_check_button_released(mb_left)) {
			global.gamepause = true;
			global.creditos = false;
			objCreditosTexto.image_index = 0;
			playSound = true;
		}
	}
}
// Fecha a tela Saves
if global.saves {
	if (_mouse) {
		if (mouse_check_button_released(mb_left)) {
			global.saves = false;
			global.menu = true;
			playSound = true;
		} 
	}
}

//Fecha a tela de Game Over
if global.gameover {
	if(_mouse) {
		if (mouse_check_button_released(mb_left)) {
			audio_play_sound(sndTelaInicial, 1, 1);
			audio_stop_sound(sndGameOver);
			scrLoadSave();
			global.lifes = 3;
			objLifesHit.direc = 0;
			objLifesHit.alpha = 1;
			global.gameover = false;
			playSound = true;
		}
	}
}

//Fecha a tela de Pause
if global.gamepause {
	if(_mouse) {
		if (mouse_check_button_pressed(mb_left)) {
			global.pause = false;
			global.gamepause = false;
			playSound = true;
		}
	}
}

//Fecha a tela de Audio
if global.audio {
	if(_mouse) {
		if (mouse_check_button_released(mb_left)) && room == TelaInicial {
			global.options = true;
			global.audio = false;
			playSound = true;
		} else if (mouse_check_button_released(mb_left)) {
			global.gamepause = true;
			global.audio = false;
			playSound = true;
		}
	}
}

//Fecha a tela de Controles
if global.controles {
	if(_mouse) {
		if (mouse_check_button_released(mb_left)) && room == TelaInicial {
			global.options = true;
			global.controles = false;
			playSound = true;
		} else if (mouse_check_button_released(mb_left)) {
			global.gamepause = true;
			global.controles = false;
			playSound = true;
		}
	}
}

if playSound {
	audio_play_sound(sndMenu_Sound_Backward, 1, 0);
	playSound = false;
}