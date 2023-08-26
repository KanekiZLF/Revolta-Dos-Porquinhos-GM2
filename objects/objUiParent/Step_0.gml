/// @description Insert description here
// You can write your code in this editor
// Obter a largura e altura da tela em pixels
var screenWidth = display_get_width();
var screenHeight = display_get_height();

// Verificar se a tela é um celular ou um monitor
if screenWidth < 1280 || screenHeight < 720 {
    // É um celular
    isMonitor = false;
	isMobile = true;
} else {
    // É um monitor
    isMobile = false;
	isMonitor = true;
} 

if global.configOS == 2 {
	image_xscale = .4;
	image_yscale = .4;
}

image_alpha = alpha;
if (mouse_check_button_pressed(mb_any)) && !global.menu && (global.configOS == 0 || global.configOS == 2) && isMonitor {
	with (objPlayer) {
		if attack && !isDead && velocidadeV = 0 && direc != 12 && direc != 13 {
			ds_list_clear(inimigos_atingidos);
			image_index = 0;
			alarm[2] = 30;
			isAttacking = true;
			attack = false;
			velocidade = 0;
			audio_play_sound(sndAttack, 1, 0);
		}
	}
}