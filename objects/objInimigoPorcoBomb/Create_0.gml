/// @description Insert description here
// You can write your code in this editor
estado = scrPig2Move;

objColisParede = objParede;
velocidade = 1;
velocidadeH = 0;
velocidadeV = 0;
gravidade = .09;
dead = false;
hit = false;
lifes = 2;
direc = 0;
direcao = 1;
walk = false;
dano = 1;
vision = -100;
bombOk = false;
bombCreat = true;
playSound = false;
hitSound = false;
crash = false;
count = false;

distPlayer = function() {
	var _player = collision_line(x, y - 10, x + vision * image_xscale, y - 10, objPlayer, false, true)
	
	if (_player) {
		estado = scrPigBombAttack;
	}
}

if room == TelaInicial {
	alarm[2] = 3 * room_speed;
}