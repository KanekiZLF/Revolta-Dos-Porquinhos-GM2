/// @description Insert description here
// You can write your code in this editor
estado = scrMovePig;

knocking = false;
lifes = 2;
velocidadeH = 0;
velocidadeV = 0;
velocidade = 0;

hit = false;
objColisParede = objParede;
gravidade = 0.08;
direc = 0;
dano = 1;
walk = false;
direcao = 1;
empurrarDir = 0;
empurrarVeloc = 1.5;
dead = false;
ascendBomb = false;
catchBomb = false;
catchBox = true;
playSound = false;
hitSound = false;
crash = false;
count = false;

if room == TelaInicial && !podeDisparar {
	alarm[3] = 4 * room_speed;
}