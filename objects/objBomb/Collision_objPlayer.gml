/// @description Insert description here
// You can write your code in this editor

if bombState = 2 && image_index <= 3 {
	var _player = instance_place(x, y, objPlayer)
	if (_player) {
		with _player {
			if tomarDano && !isDead {
				global.lifes--;
				objLifesHit.image_index = 0;
				objLifesHit.direc++;
				objLifesHit.alpha = 1;
				playSoundHit = true;
				alarm[1] = 5; //Tempo para empurrar
				alarm[0] = 120; // <--Tempo Invencibilidade
				tomarDano = false;
			}
		}
	}
}