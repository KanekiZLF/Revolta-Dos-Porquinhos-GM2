// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function scrPig4Move() {
scrDirecPig4();
distPlayer();
	
//Sprites de Movimentação
	if velocidadeV = 0 {
		if direc = 4 {
			direc = 0;
		}
		
		if direc = 5 {
			direc = 1;
		}
	}
	
	if velocidadeV > 0.1 {
		if direc = 4 {
			direc = 6; // <-- Jump Esquerda
		}
		
		if direc = 5 {
			direc = 7; //<-- Fall Esquerda
		}
	}
	
	if place_meeting(x, y + 1, objColisParede) {
		if direc = 6 {
			direc = 12;
			velocidadeH = 0;
		}
		
		if direc = 7 {
			direc = 13;
			velocidadeH = 0;
		}
	}
	
	if sprite_index = sprPigHidenBoxGround && velocidadeV = 0 {
		if wait("t_an", 0.2) {
			if direc = 12 {
				direc = 0;
			}
			
			if direc = 13 {
				direc = 1;
			}
		}
	}
	
	if !hit && canMove {
		if walk {
			velocidade = 1;
		}
	
		if wait("t_walk3", 3) {
			walk = !walk;
			velocidadeH = 0;
		}
	}
	
	if !podeCair {
		if !place_meeting(x + (velocidadeH * 10), y + 1, objColisParede) {
			direcao *= -1;
		}
	}
	if wait("t_look", 2) {
		look = !look;
	}
}

function scrDirecPig4() {
	switch direc {
		case 0:
			scrChangeSprite(sprPigHidenBoxLookingOut);
			image_xscale = -1;
				if look {
					image_speed = 1;
					image_index = image_number -2;
				}
			if scrFimAnimacao() {
				if !look {
					image_speed = 0;
					image_index = 0;
				}
				if walk {
					if direc = 0 {
						direc = 2;
					}
				}
			}
		break;
		
		case 1:
			scrChangeSprite(sprPigHidenBoxLookingOut);
			image_xscale = 1;
				if look {
					image_speed = 1;
					image_index = image_number -2;
				}
			if scrFimAnimacao() {
				if !look {
					image_speed = 0;
					image_index = 0;
				}
				if walk {
					if direc = 1 {
						direc = 3;
					}
				}
			}
		break;
		
		case 2:
			scrChangeSprite(sprPigHidenBoxJumpAnticipation);
			image_xscale = -1;
			if scrFimAnimacao() {
				if walk {
					direc = 4;
					velocidadeV = -2;
					velocidadeH = velocidade;
				}
			}
		break;
		
		case 3:
			scrChangeSprite(sprPigHidenBoxJumpAnticipation);
			image_xscale = 1;
			if scrFimAnimacao() {
				direc = 5;
				velocidadeV = -2;
				velocidadeH = -velocidade;
			}
		break;
		
		case 4:
			scrChangeSprite(sprPigHidenBoxJump);
			image_xscale = -1;
		break;
		
		case 5:
			scrChangeSprite(sprPigHidenBoxJump);
			image_xscale = 1;
		break;
		
		case 6:
			scrChangeSprite(sprPigHidenBoxFall);
			image_xscale = -1;
		break;
		
		case 7:
			scrChangeSprite(sprPigHidenBoxFall);
			image_xscale = 1;
		break;
		
		case 8:
			scrChangeSprite(sprPigJHit);
			image_xscale = -1;
		break;
		
		case 9:
			scrChangeSprite(sprPigJHit);
			image_xscale = 1;
		break;
		
		case 10:
			scrChangeSprite(sprPigJDead);
			image_xscale = -1;
		break;
		
		case 11:
			scrChangeSprite(sprPigJDead);
			image_xscale = 1;
		break;
		
		case 12:
			scrChangeSprite(sprPigHidenBoxGround);
			image_xscale = -1;
		break;
		
		case 13:
			scrChangeSprite(sprPigHidenBoxGround);
			image_xscale = 1;
		break;
	}
	
	//Hit true e dead false
	if hit && !dead {
		direcao = 0;
		velocidade = 0;
		velocidadeH = 0;
		if direc = 0 || direc = 2|| direc = 4 || direc = 6 {
			direc = 8;
		}
		
		if direc = 1 ||direc = 3 || direc = 5 || direc = 7 {
			direc = 9;
		}
	}
	
// Se hit for false
	if !hit {
		if direc = 8 {
			direc = 0;
		}
		
		if direc = 9 {
			direc = 1;
		}
	}

//Se Dead for True
	if dead {
		if direc = 8 {
			direc = 10;
		}
		
		if direc = 9 {
			direc = 11;
		}
	}
}

function scrPigHidenBreak() {
		if !dead {
			var _newBox = instance_create_layer(x, y - 8, "Inimigos", objBox);
				_newBox.hit = true; //<-- Define se a caixa pode se AUTO-DESTRUIR
				_newBox.boxPig = true; //<-- Se a caixa for do PIG, não ira criar Diamantes nem Vida
			var _newPig = instance_create_layer(x, y - 2, "Inimigos", objInimigoPorco);
				_newPig.direc = image_xscale; //<-- Faz com que o Pig, ande na direção em que foi criado
				_newPig.catchBox = false; //<-- Define que o Pig novo não pode pegar a caixa no momento em que foi criado
				_newPig.direcao = -1 * image_xscale;
			instance_destroy();
	}
}