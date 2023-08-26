/// @description Insert description here
// You can write your code in this editor
if (global.pause) {
	velocidadeH = 0;
	image_speed = 0;
}

if (global.pause) exit;
image_speed = 1;
randomize();
event_inherited()

script_execute(estado)
scrBombs();

if lifes <= 0 {
	count = true;
	direcao = 0;
	velocidade  = 0;
	velocidadeH = 0;
	dead = true;
	podeDisparar = false;
	playSound = true;
	
	image_alpha -= 0.01;
	if image_alpha <= 0 {
		instance_destroy();
	}
}

if wait("t_catchB", 4) {
	catchBomb = !catchBomb;
}

if wait("t_catchC", 4) {
	catchBox = !catchBox;
}

if catchBox {
//Pega a caixa
	var _box = instance_place(x, y, objBox)
	if (_box && !_box.hit) {
		instance_destroy(_box);
		var _newPig = instance_create_layer(x, y, "Inimigos", objInimigoPorcoBox);
		_newPig.estado = scrIsTakingBox;
		_newPig.direcao = -1 * image_xscale;
	instance_destroy();
	}
}


//Verifica a direc, evita o bug de ser criado olhando pro lado oposto
if direc = -1 {
	direc = 0;
}

//Define redefine a vida <-- Resolve bug do pisca infinito
if (estado = scrPigCannon) && !dead {
	if scrFimAnimacao() {
		lifes = 1;
	}
}

if hitSound {
	audio_play_sound(sndEnemyDead, 1, 0);
	hitSound = false;
}

if lifes = 0 && count {
	global.inimigosNumber--;
	count = false;
}

if lifes = 0 && playSound {
	audio_play_sound(sndEnemyDead, 1, 0);
	playSound = false;
	lifes = -1;
}
