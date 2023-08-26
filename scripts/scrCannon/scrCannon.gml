// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scrDirecCannon() {
	switch cannonState {
		case 0:
			sprCannon = sprCannonIdle;
		break;
		
		case 1:
			sprCannon = sprCannonOn;
		break;
	}
}


function scrCannon() {
	scrDirecCannon();
}