/// @description Insert description here
// You can write your code in this editor
if global.pause{
	velocidade = 0;
	image_speed = 0;
}
if (global.pause) exit;
event_inherited();

if !place_meeting(x, y+1, objBox) {
	scrCollision();
} else if place_meeting(x, y+1, objBox) {
	
	//Colisor X Caixa
	if place_meeting(x + velocidadeH, y, objBox){
		while !place_meeting(x + sign(velocidadeH), y, objBox){
			x += sign(velocidadeH);
	}
		velocidadeH = 0;
	}

	//Colisao Y Caixa
	if place_meeting(x, y + velocidadeV, objBox){
		while !place_meeting(x, y + sign(velocidadeV), objBox){
			y += sign(velocidadeV); 
	}
		velocidadeV = 0;
	}

}

script_execute(estado);

if lifes <= 0 {
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

if (sprite_index == sprPigJIdle) {
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
