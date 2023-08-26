/// @description Variaveis AQUI !
// You can write your code in this editor
velocidadeH = 0;
velocidadeV = 0;
velocidade  = 2;
gravidade   = 0.2;
direita = 0;
esquerda = 0;
cima = 0;
delayText = false;

danoAlpha = -1;
tomarDano = true;
empurrarDir = 0;
dano = 1;
puloInimigo = -3;
blockJump = false;
estado = scrPlayer;
playSound = false;
playSoundJump = false;
playSoundDiamond = false;
playSoundLife = false;
playSoundHit = false;

direc = 13;
doubleJump = 0;
pulo = -4;
alturaPulo = pulo;
isJumping = false;
isAttacking = false;
attack = true;
isFall = false;
isDead = false;
inimigos_atingidos = ds_list_create();
moveOn = false;
view_zoom=1;
view_max_zoom=10;
objColisParede = objParede;

if !global.transicao {
	layer_sequence_create("Transicao", objPlayer.x, objPlayer.y, sqTransicaoIn)
}