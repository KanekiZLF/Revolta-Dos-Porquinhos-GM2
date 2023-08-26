/// @description Insert description here
// You can write your code in this editor
if !place_meeting(x, y + 1, objBox) {
	scrCollision();
} else if place_meeting(x, y + 1, objBox) {
	
	//Colisor X Caixa
	if place_meeting(x + velocidadeH, y, objBox){
		while !place_meeting(x + sign(velocidadeH), y, objBox){
			x += sign(velocidadeH);
	}
		velocidadeH = 0;
		if canDestroy {
			hit = true;
		}
	}

	//Colisao Y Caixa
	if place_meeting(x, y + velocidadeV, objBox){
		while !place_meeting(x, y + sign(velocidadeV), objBox){
			y += sign(velocidadeV); 
	}
		velocidadeV = 0;
		if canDestroy {
			hit = true;
		}
	}
}

script_execute(estado);

if (place_meeting(x, y + velocidadeV, objColisParede)) {
	if (velocidadeH != 0) {
		velocidadeH = 0;
	}
	
	if canDestroy {
		hit = true;
	}
}

if (place_meeting(x + velocidadeH, y, objColisParede)) {
	if canDestroy {
		hit = true;
	}
}

if (place_meeting(x, y + 1, objPlayer)) {
	if canDestroy {
		hit = true;
	}
}

if place_meeting(x, y, objBomb) {
	if canDestroy {
		hit = true;
	}
}

if playSound {
	audio_play_sound(sndBoxBroken, 1, 0);
	playSound = false;
}