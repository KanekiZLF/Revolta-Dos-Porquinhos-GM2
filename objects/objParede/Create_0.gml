/// @description Variaveis AQUI !
// You can write your code in this editor

velocidadeH = 0;
velocidadeV = 0;
velocidade  = 2;
gravidade   = 0.2;
lifes = 3;
coins = 0;
danoAlpha = -1;
tomarDano = true;
empurrarDir = 0;
dano = 1;
puloInimigo = -3;
blockJump = false;
estado = scrPlayer;

direita = 0;
esquerda = 0;
cima = 0;
direc = 0;
doubleJump = 0;
alturaPulo = -5;
isJumping = false;
isAttacking = false;
attack = true;
sprPlayer = sprPlayerIdle;
isFall = false;
inimigos_atingidos = ds_list_create();

objColisParede = objParede;


global.pause = false;

