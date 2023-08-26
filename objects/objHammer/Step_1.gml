/// @description Insert description here
// You can write your code in this editor
if (touch_id != -1 && !global.pause)
{
	if (device_mouse_check_button(touch_id, mb_any)) && !global.menu {
		alpha = 0.8;
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
	else
	{
		alpha = 0.5;
		touch_id = -1;
	}
}
