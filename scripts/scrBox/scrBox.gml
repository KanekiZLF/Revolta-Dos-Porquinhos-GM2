// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scrBox(){
	switch direc {
		case 0:
			scrChangeSprite(sprBoxIdle);
		break;
		
		case 1:
			scrChangeSprite(sprBoxHit);
			hit = true;
		break;
	}
	
//Define a sprite de HIT e cria o Heart eo Diamond
	if hit {
		direc = 1;
		if wait("t_hit2", 0.10) {
			if instance_exists(objPlayer) {
				if place_meeting(x, y, objPlayer) && !boxPig {
					var _diamond = choose(1, 0, 0, 0, 0, 0, 0);
					var _heart = choose (1, 0, 0, 0);
					global.points += 2;
					if _diamond instance_create_layer(x + 12 * objPlayer.image_xscale, y - 8, "Instances", objDiamond); // <-- Diamond
					if _heart instance_create_layer(x + 10 * objPlayer.image_xscale, y - 8, "Instances", objHeart); // <-- Heart
				} else if !boxPig {
					var _diamond = choose(1, 0, 0, 0, 0, 0, 0);
					var _heart = choose (1, 0, 0, 0);
					global.points += 2;
					if _diamond instance_create_layer(x + 12 * objPlayer.image_xscale, y - 8, "Instances", objDiamond); // <-- Diamond
					if _heart instance_create_layer(x + 10 * objPlayer.image_xscale, y - 8, "Instances", objHeart); // <-- Heart
				}
			}
			playSound = true;
			instance_create_layer(x - 11, y - 9, "Instances", objPieceBox1); // <-- Peça 1
			instance_create_layer(x + 10, y - 9, "Instances", objPieceBox2); // <-- Peça 2
			instance_create_layer(x - 11, y + 9, "Instances", objPieceBox3); // <-- Peça 3
			instance_create_layer(x + 10, y + 9, "Instances", objPieceBox4); // <-- Peça 4
			instance_destroy();
		}
	}
}