// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scrBombs() {
	if !catchBomb {
//Ascende a bomba
		var _inst = instance_place(x, y, objBomb);
		if place_meeting(x, y, objBomb) && _inst.bombState = 0 {
			if (sprite_index == sprPigFosforo3) {
				var _bomba = instance_place(x, y, objBomb);
				if _bomba {
					with _bomba {
						bombIsOn = true;
					}
				}
			}
			estado = scrPigBomb;
		}
	}
	
	if catchBomb {
//Pega a bomba
		var _bomba = instance_place(x, y, objBomb)
		if (_bomba && _bomba.bombState = 0) {
			instance_destroy(_bomba);
			var _newPig = instance_create_layer(x, y, "Inimigos", objInimigoPorcoBomb);
				_newPig.estado = scrIsTaking;
				_newPig.direcao = -1 * image_xscale;
			instance_destroy();
		}
	}

//Ascende o canhao
	if place_meeting (x, y, objCannon) && objCannon.cannonState = 0 && podeDisparar {
		if (sprite_index == sprPigFosforo3) {
		var _cannon = instance_place(x, y, objCannon);
			if _cannon {
				with _cannon {
					alarm[0] = 1.3; // <-- Tempo para canhao disparar a bomba
					cannonIsOn = true; // <-- Define se o canhao esta aceso
				}
			}
		}
		estado = scrPigCannon; //<-- Altera estado para ascender o canhão
	}
}