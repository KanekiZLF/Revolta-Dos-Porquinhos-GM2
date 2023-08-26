/// @description Insert description here
// You can write your code in this editor
estado = scrBombaIdle;

bombIsOn = false;
bombState = 0;
bombTimer = 1 * room_speed; //<-- Deve se colocar room_speed para medir em SEGUNDOS e nao por QUADROS
sprBomba = sprBomb_Off;
objColisParede = objParede;
velocidadeH = 0;
velocidadeV = 0;
velocidade = 1;
gravidade = 0.09;
push = false;
velocPush = 1.5;
playSound = false;