/// @description Insert description here
// You can write your code in this editor
estado = scrPig4Move;

objColisParede = objParede;
velocidade = 0;
velocidadeH = 0;
velocidadeV = 0;
gravidade = .09;
dead = false;
hit = false;
lifes = 2;
direcao = 1;
walk = false;
dano = 1;
vision = -50;
boxOk = false;
boxDirec = 0;
direc = 0;
look = false;
playSound = false;
hitSound = false;
crash = false;
count = false;

distPlayer = function() {
	var _player = collision_line(x, y - 10, x + vision * image_xscale, y - 10, objPlayer, false, true)
	
	if (_player) {
		estado = scrPigHidenBreak;
	}
}

if image_xscale = 1 {
	direc = 1;
}

if image_xscale = -1 {
	direc = 0;
}

if (room == TelaInicial) {
	alarm[3] = 2 * room_speed;
}