/// @description Insert description here
// You can write your code in this editor
global.currentRoom = room_get_name(room);

if playSound {
audio_play_sound(sndTelaInicial, 1, 1);
playSound = false;
}

switch (os_type) {
	case os_windows:
		global.configOS = 0;
	break;
	
	case os_android:
		global.configOS = 1;
	break;
	
	case os_operagx:
		global.configOS = 2;
	break;
}