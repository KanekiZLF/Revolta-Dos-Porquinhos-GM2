// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scrCannonBall() {
	scrDirecCannonBall();
	scrCollision();
	
}

function scrDirecCannonBall() {
	switch direc {
		case 0:
			sprCannonBall1 = sprCannonBall;
		break;
		
		case 2:
			sprCannonBall1 = sprBoom;
		break;
	}
}