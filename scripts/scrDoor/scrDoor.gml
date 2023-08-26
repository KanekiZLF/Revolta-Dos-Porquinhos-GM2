// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scrDoor(){
	scrDoorDirec();
}

function scrDoorDirec() {
	switch direc {
		case 0:
			scrChangeSprite (sprDoorIdle);
			var _player = instance_place(x, y, objPlayer)
			if (_player) && canOpen && global.inimigosNumber <= 0 {
				if keyboard_check_pressed(ord("W")) && !_player.isDead && _player.velocidadeV = 0 && _player.velocidadeH = 0 {
					direc = 1;
					layer_sequence_create("Transicao", objPlayer.x, objPlayer.y, sqTransicaoOut)
				}
			}
		break;
		
		case 1:
			scrChangeSprite (sprDoorOpening);
			if image_index = 0 {
				playSound = true;
				doorOpen = true;
			}
			if (image_index >= image_number -1) {
				image_speed = 0;
			}
		break;
		
		case 2:
			scrChangeSprite (sprDoorClosiong);
			if image_index = 1 {
				playSound = true;
				doorOpen = false;
			}
			if (image_index >= image_number -1) {
				direc = 0;
				scrSaveGame();
			}
		break
	}
}