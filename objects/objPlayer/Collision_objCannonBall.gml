/// @description Insert description here
// You can write your code in this editor
if tomarDano && mask_index = sprPlayerIdle && !isFall && !isDead {
	global.lifes -= 1;
	alarm[1] = 10;
	alarm[0] = 120;
	objLifesHit.image_index = 0;
	objLifesHit.direc += 1;
	objLifesHit.alpha = 1;
	
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