// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scrCollision(){

//Colisao X
	if place_meeting(x + velocidadeH, y, objColisParede)  {
	while !place_meeting(x + sign(velocidadeH), y, objColisParede)  {
		x += sign(velocidadeH);
	}
		velocidadeH = 0;
	}
	x += velocidadeH;

//Colisao Y
	if place_meeting(x, y + velocidadeV, objColisParede) {
		while !place_meeting(x, y + sign(velocidadeV), objColisParede) {
			y += sign(velocidadeV); 
	}
		velocidadeV = 0;
	}
	y += velocidadeV;

//Gravidade
	if !place_meeting(x, y + 1, objColisParede) {
		velocidadeV += gravidade;
	}
}