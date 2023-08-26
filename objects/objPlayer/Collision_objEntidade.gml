/// @description Insert description here
// You can write your code in this editor
if (global.pause) exit;

if tomarDano && mask_index = sprPlayerIdle && !isFall && !isDead {
var _inst = instance_place(x, y, objEntidade);
	if !_inst.dead {
		global.lifes--;
		objLifesHit.image_index = 0;
		objLifesHit.direc++;
		objLifesHit.alpha = 1;
		playSoundHit = true;
		alarm[1] = 10;
		alarm[0] = 120;
		
		if direc = 0 || direc = 2 {
			var dir = point_direction(x, y, objPlayer.x - 10, objPlayer.y);
			empurrarDir = dir;
		}
		
		if direc = 1 || direc = 3 {
			var dir = point_direction(x, y, objPlayer.x + 10, objPlayer.y);
			empurrarDir = dir;
		}
			tomarDano = false;
	}
}




