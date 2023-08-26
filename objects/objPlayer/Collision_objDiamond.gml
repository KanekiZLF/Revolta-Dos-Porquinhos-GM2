/// @description Insert description here
// You can write your code in this editor
global.diamonds += 1;
playSoundDiamond = true;
if playSoundDiamond {
	audio_play_sound(sndDiamond, 1, 0);
	playSoundDiamond = false;
}
instance_destroy(other);