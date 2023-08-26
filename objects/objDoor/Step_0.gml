/// @description Insert description here
// You can write your code in this editor
script_execute(estado);

if playSound && !doorOpen {
	audio_play_sound(sndDoorClose, 1, 0);
	playSound = false;
}

if playSound && doorOpen {
	audio_play_sound(sndDoorOpen, 1, 0);
	playSound = false;
}