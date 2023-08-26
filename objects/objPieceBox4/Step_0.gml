/// @description Script de Gravidade
// You can write your code in this editor
scrCollision();

if dir {
	x += velocidade;
	y -= velocidade;
	velocidade -= 0.08;
}

if velocidade <= 0 {
	dir = false;
	image_alpha -= 0.01;
}

if image_alpha <= 0 {
	instance_destroy();
}