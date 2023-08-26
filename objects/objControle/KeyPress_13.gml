/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
if !global.options && !global.menu && !global.audio && global.controls && !global.gameover && !global.creditos {
	playSound = true;
	global.pause = !global.pause;
	global.gamepause = !global.gamepause;
}

if playSound && global.gamepause {
	audio_play_sound(sndMenu_Sound_PauseIn, 1, 0);
	playSound = false;
}

if playSound && !global.pause {
	audio_play_sound(sndMenu_Sound_PauseOut, 1, 0);
	playSound = false;
}

