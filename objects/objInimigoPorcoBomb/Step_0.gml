/// @description Insert description here
// You can write your code in this editor
if global.pause{
	velocidade = 0;
	image_speed = 0;
}

if (global.pause) exit;
event_inherited();
image_speed = 1;
script_execute(estado);

if lifes <= 0 {
	if bombCreat && direc != 6 && direc != 7 {
		instance_create_layer(x, y - 10, "Projeteis_Bombas", objBomb);
		bombCreat = false;
	}
	count = true;
	direcao = 0;
	velocidade  = 0;
	velocidadeH = 0;
	dead = true;
	playSound = true;
	
	image_alpha -= 0.01;
	if image_alpha <= 0 {
		instance_destroy();
	}
}		
		
//Verifica se tem algo colidindo, na direita ou esquerda, se tiver, diminui o campo de visao, até sair da colisao
vision = clamp(vision, -100, 0); //<-- Limita o campo de visao até 100px
var _lineWall = collision_line(x, y - 10, x + vision * image_xscale, y - 10, objColisParede, false, true)
if (_lineWall) {
	vision++;
}

//Se nao tiver nada colidindo, aumenta o campo de visao
var _lineWall2 = !collision_line(x, y - 10, x + vision * image_xscale, y - 10, objColisParede, false, true)
if (_lineWall2) {
	vision--;
}

if direc = 10 || 11 {
	if image_index = 0 {
		playSound = true;
	}
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

if hitSound {
	audio_play_sound(sndEnemyDead, 1, 0);
	hitSound = false;
}

if podeAtacar {
	alarm[2] = 2 * room_speed;
	podeAtacar = false;
}