/// @description Insert description here
// You can write your code in this editor
estado = scrPig3Move;

objColisParede = layer_tilemap_get_id("Chao");

velocidade = 1;
velocidadeH = 0;
velocidadeV = 0;
gravidade = .09;
dead = false;
hit = false;
lifes = 2;
points = 10;
direc = 0;
boxDirec = 0;
direcao = 1;
walk = false;
dano = 1;
vision = -100;
boxOk = false;
playSound = false;
hitSound = false;
crash = false;
count = false;


distPlayer = function() {
	var _player = collision_line(x, y - 10, x + vision * image_xscale, y - 10, objPlayer, false, true)
	
	if (_player) {
		estado = scrPigBoxAttack;
	}
}

if room == TelaInicial {
	alarm[2] = 4 * game_get_speed(gamespeed_fps); 
}