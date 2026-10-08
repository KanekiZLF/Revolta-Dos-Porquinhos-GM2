/// @description Insert description here
// You can write your code in this editor
if !isAttacking {
	global.points += 50;
	scrFloat(x, y - 20, "+50", 1, 1, 0.4, 50, c_white, c_fuchsia, 1, 8, fnTextosSmall);
	global.lifes++;
	objLifesHit.direc--;
	playSoundLife = true;
	var _lifes = global.lifes;

	if playSoundLife && _lifes <= 3 {
		audio_play_sound(sndLife, 1, 0);
		playSoundLife = false;
	}

	if playSoundLife && _lifes >= 3 {
		audio_play_sound(sndDiamond, 1, 0);
		global.diamonds += 1;
		playSoundLife = false;
	}
	instance_destroy(other);
}