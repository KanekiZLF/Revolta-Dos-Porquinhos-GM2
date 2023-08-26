// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scrMovePig() {
	scrCollision();
	scrDirecPig();
	velocidadeH = direcao * velocidade;
	
//Sprites de Movimentação
	if velocidadeH = 0 {
		if direc = 2 {
			direc = 0;
		}
		
		if direc = 3 {
			direc = 1;
		}
	}
	
	if velocidadeH != 0 {
		if direcao = 1 {
			direc = 2;
		}
		
		if direcao = -1 {
			direc = 3;
		}
	}
	
	if !hit {
		if walk {
			velocidade = 1;
		}
	
		if place_meeting(x + velocidadeH, y, objColisParede) {
			direcao *= -1;
		}
	
		if wait("t_walk", 1) {
			walk = !walk;
			velocidade = 0;
		}
	}
	
	if !podeCair{
		if !place_meeting(x + (velocidadeH * 10), y + 1, objColisParede) {
			direcao *= -1;
		}
	}
	

//Hit true e dead false
	if hit && !dead {
		direcao = 0;
		velocidade = 0;
		velocidadeH = 0;
		if direc = 0 || direc = 2 {
			direc = 6;
		}
		
		if direc = 1 || direc = 3 {
			direc = 7;
		}
	}
	
// Se hit for false
	if !hit {
		if direc = 6 {
			direc = 0;
		}
		
		if direc = 7 {
			direc = 1;
		}
	}

//Se Dead for True
	if dead {
		if direc = 6 {
			direc = 8;
		}
		
		if direc = 7 {
			direc = 9;
		}
	}
}

function scrDirecPig() {
	switch direc {
		case 0:
			scrChangeSprite(sprPigJIdle);
			image_xscale = -1;
		break;
		
		case 1:
			scrChangeSprite(sprPigJIdle);
			image_xscale = 1;
		break;
		
		case 2:
			scrChangeSprite(sprPigJRun);
			image_xscale = -1;
		break;
		
		case 3:
			scrChangeSprite(sprPigJRun);
			image_xscale = 1;
		break;
		
		case 4:
			scrChangeSprite(sprPigJAttack);
			image_xscale = -1;
		break;
		
		case 5:
			scrChangeSprite(sprPigJAttack);
			image_xscale = 1;
		break;
		
		case 6:
			scrChangeSprite(sprPigJHit);
			image_xscale = -1;
		break;
		
		case 7:
			scrChangeSprite(sprPigJHit);
			image_xscale = 1;
		break;
		
		case 8:
			scrChangeSprite(sprPigJDead);
			image_xscale = -1;
		break;
		
		case 9:
			scrChangeSprite(sprPigJDead);
			image_xscale = 1;
		break;
		
		case 10:
			scrChangeSprite(sprPigFosforo1);
			image_xscale = -1;
		break;
		
		case 11:
			scrChangeSprite(sprPigFosforo1);
			image_xscale = 1;
		break;
		
		case 12:
			scrChangeSprite(sprPigFosforo2);
			image_xscale = -1;
		break;
		
		case 13:
			scrChangeSprite(sprPigFosforo2);
			image_xscale = 1;
		break;
		
		case 14:
			scrChangeSprite(sprPigFosforo3);
			image_xscale = -1;
		break;
		
		case 15:
			scrChangeSprite(sprPigFosforo3);
			image_xscale = 1;
		break;
	}
}

function scrPigBomb() {
	scrCollision();
	scrDirecPig();
	velocidadeH = 0;
	
	if !ascendBomb {
		if direc = 2 {
			direc = 10;
		}
	
		if direc = 3 {
			direc = 11;
		}
	
		if direc = 10 || direc = 11 {
			if scrFimAnimacao() {
				if direc = 10 {
					direc = 14;
					ascendBomb = true;
				}
	
				if direc = 11 {
					direc = 15;
					ascendBomb = true;
				}
			}
		}
	}
	
	if (sprite_index == sprPigFosforo3) {
		if scrFimAnimacao() {
			if direc = 14 {
				direc = 0;
			}
	
			if direc = 15 {
				direc = 1;
			}
			ascendBomb = false;
		}
	}
	
	if (sprite_index == sprPigJIdle) { 
		estado = scrMovePig;
	}
	
//Hit true e dead false
	if hit && !dead {
		direcao = 0;
		velocidade = 0;
		velocidadeH = 0;
		if direc = 10 || direc = 14 {
			direc = 6;
		}
		
		if direc = 11 || direc = 15 {
			direc = 7;
		}
		estado = scrMovePig;
	}
	//Se Dead for True
	if dead {
		if direc = 6 {
			direc = 8;
		}
		
		if direc = 7 {
			direc = 9;
		}
	}
}

function scrPigCannon() {
	scrCollision();
	scrDirecPig();
	velocidade = 0;
	velocidadeH = 0;
//Hit true e dead false
	if hit && !dead {
		velocidade = 0;
		velocidadeH = 0;
		if direc = 0 || direc = 10 || direc = 14 {
			direc = 6;
		}
		
		if direc = 1 || direc = 11 || direc = 15 {
			direc = 7;
		}
		
		if scrFimAnimacao() {
			estado = scrMovePig;
		}
	}
	//Se Dead for True
	if dead {
		if direc = 0 || direc = 6 || direc = 10 || direc = 14 {
			direc = 8;
		}
		
		if direc = 1 || direc = 7 || direc = 11 || direc = 15 {
			direc = 9;
		}
	}
	
	if !hit && !dead {
		if direc = 2 {
			direc = 10;
		}
	
		if direc = 3 {
			direc = 11;
		}
	
		if (sprite_index == sprPigFosforo1) {
			if scrFimAnimacao() {
				if direc = 10 {
					direc = 14;
				}
	
				if direc = 11 {
					direc = 15;
				}
			}
		}
		
		if (sprite_index == sprPigFosforo3) {
			if scrFimAnimacao() {
				alarm[2] = timerCannon * room_speed; // <-- Tempo para acender o canhao em segundos
				if direc = 14 {
					direc = 0;
				}
	
				if direc = 15 {
					direc = 1;
				}
			}
		}
	
		if (sprite_index == sprPigJIdle) {
			if alarm[2] = 0 {
				if direc = 0 {
					direc = 10;
				}
	
				if direc = 1 {
					direc = 11;
				}
			}
		}
	}
}