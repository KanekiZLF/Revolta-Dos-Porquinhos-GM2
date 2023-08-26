// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scrBombaIdle(){
	switch bombState {
		case 0:
			sprBomba = sprBomb_Off;
		break;
		
		case 1:
			sprBomba = sprBomb_On;
		break;
		
		case 2:
			sprBomba = sprBoom;
			var _bomba = instance_place(x, y, objBomb);
				if _bomba {
					with _bomba {
						bombIsOn = true;
					}
				}
		break;
	}
	
	if scrFimAnimacao(sprBoom) {
		instance_destroy()
	}
}