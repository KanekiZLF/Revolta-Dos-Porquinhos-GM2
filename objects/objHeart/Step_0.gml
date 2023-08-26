/// @description Insert description here
// You can write your code in this editor
/*if dir {
	x += -velocidade;
	y -= velocidade;
	velocidade -= 0.03;
}

if velocidade <= 0 {
	dir = false;
}*/


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
		velocidadeH = 0;
		if direc = 0 {
			direc = 1;
		}
	}
	y += velocidadeV;

if dir {
//Gravidade
	if !place_meeting(x, y + 1, objColisParede) {
		velocidadeV += gravidade;
	}
}

if place_meeting(x, y + 1, objColisParede) && !dir {
	alarm = .3 * room_speed;
	if alarm[0] > 0 {
	velocidadeV = -.4;
	velocidadeH = .5 * direcao;
	}
}


switch direc {
	case 0:
		dir = true;
	break;
	
	case 1:
		dir = false;
	break;
	
	case 2:
		dir = true;
	break;
}

if object_exists(objPlayer) {
	direcao = objPlayer.image_xscale;
} else {
	direcao = objInimigoPorco.image_xscale;
}

