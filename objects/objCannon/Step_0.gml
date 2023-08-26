/// @description Insert description here
// You can write your code in this editor
script_execute(estado);
scrCollision();
sprite_index = sprCannon;

if cannonIsOn {
	if alarm[0] <= 0 {
		cannonState = 1;
	}
}

if scrFimAnimacao() {
	cannonState = 0;
	cannonIsOn = false;
}

if cannonState = 1 && image_index = 1.5 {
	var _bola = instance_create_layer(x - (8 * image_xscale), y - 11, "Instances", objCannonBall);
	_bola.velocidadeH = vellCannon * image_xscale;
	_bola.velocidadeV = -1;
	if isBombCannon {
		_bola.thisBomb = true;
	}
}

