/// @description Insert description here
// You can write your code in this editor
scrCollision();

if dir {
	x += velocidade;
	y -= velocidade;
	velocidade -= 0.03;
}



if velocidade <= 0 {
	dir = false;
	image_alpha -= 0.01;
}

if place_meeting(x, y, objColisParede){
instance_destroy();
}

if image_alpha <= 0 {
	instance_destroy();
}