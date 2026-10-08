/// @description Insert description here
// You can write your code in this editor
global.diamonds += 1;
global.points += 100;
scrFloat(x, y - 20, "+100", 1, 1, 0.4, 50, c_white, c_fuchsia, 1, 8, fnTextosSmall);
playSoundDiamond = true;
if playSoundDiamond {
	audio_play_sound(sndDiamond, 1, 0);
	playSoundDiamond = false;
}
instance_destroy(other);