/// @description Insert description here
// You can write your code in this editor
script_execute(estado);
sprite_index = sprCannonBall1;

if (place_meeting(x, y + 1, objColisParede)) {
	if (velocidadeH != 0) {
		velocidadeH = 0;
	}
}


if (abs(velocidadeH) <= 1) {
	if thisBomb {
		var _inst  = instance_create_layer(x, y + sprite_height / 2, "Projeteis_Bombas", objBomb);
		_inst.bombIsOn = true;
	}
	
	if !thisBomb {
		var _inst  = instance_create_layer(x, y + sprite_height / 2, "Projeteis_Bombas", objBomb);
		_inst.bombState = 2;
		playSound = true;
	}
	instance_destroy();
}

var _bomba = instance_place(x, y, objBomb);
	if _bomba {
		with _bomba {
		bombIsOn = true;
	}
}

if playSound {
	audio_play_sound(sndBoom, 1, 0);
	playSound = false;
}