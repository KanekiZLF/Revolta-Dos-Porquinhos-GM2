/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
centerX = display_get_gui_width()/2;
alpha = clamp(alpha, 0, 1);

if global.configOS == 0 || global.configOS == 1 && global.opening {
	scale = .2;
	y = y;
} else if global.configOS == 2 && global.opening {
	scale = 1;
	y = 700;
}

if global.opening {
	if wait("scaleTimer", 1.2) {
		if defAlpha = 0 {
			defAlpha = 1;
		}
		else if defAlpha = 1 {
			defAlpha = 0
		}
	}

	switch defAlpha {
		case 0:
			if wait("def1", .1) {
				alpha += .1;
			}
		break;
	
		case 1:
			if wait("def2", .1) {
				alpha -= .1;
			}
		break;
	}
}

if (mouse_check_button_released(mb_any) && global.opening) {
	global.opening = false;
	alpha = 1;
	global.menu = true;
	playSound = true;
}

if playSound {
	audio_play_sound(sndMenu_Sound_Forward, 1, 0);
	playSound = false;
}