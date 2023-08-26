/// @description Insert description here
// You can write your code in this editor
if !place_meeting(x, y, objBox) {
	scrCollision();
}

if place_meeting(x, y, objBox) {
	//Colisor X Caixa
	if place_meeting(x + velocidadeH, y, objBox) {
		while !place_meeting(x + sign(velocidadeH), y, objBox){
			x += sign(velocidadeH);
	}
		velocidadeH = 0;
	}

	//Colisao Y Caixa
	if place_meeting(x, y + velocidadeV, objBox){
		while !place_meeting(x, y + sign(velocidadeV), objBox){
			y += sign(velocidadeV); 
	}
		velocidadeV = 0;
	}
}

script_execute(estado)

sprite_index = sprBomba;

if (place_meeting(x, y + 1, objColisParede)) {
	if (velocidadeH != 0) {
		velocidadeH *= 0.9;
	}
}


if bombIsOn {
	if bombState = 0 {
		alarm[0] = bombTimer;
		playSound = true;
		bombState = 1;
	}
	
	if bombState = 1 {
		if alarm[0] = 0 {
			bombState = 2;
			audio_stop_sound(sndWick);
			if (sprite_index != sprBoom) {
				sprite_index = sprBoom;
				image_index = 0;
				velocidade = 0;
				velocidadeH = 0;
				audio_play_sound(sndBoom, 2, 0);
			}
		}
	}
}

//Define se a bomba pode ser empurrada ou não
if (push) {
	velocidadeH =  velocPush * objPlayer.image_xscale;
	velocidadeV = -1.5;
	global.points += 3;
	push = false;
}
if playSound {
	audio_play_sound(sndWick, 1, 0);
	playSound = false;
}

if bombState = 2 {
	var _box = instance_place(x, y, objBox)
	if place_meeting(x, y, _box) {
		if _box {
			with _box {
				canDestroy = true;
			}
		}
	}
}

