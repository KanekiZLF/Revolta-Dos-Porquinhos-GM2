// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function scrPig3Move() {
scrDirecPig3();
scrCollision();
distPlayer();

velocidadeH = (direcao) * velocidade;
	
//Sprites de Movimentação
	if velocidadeH = 0 {
		if direc = 4 {
			direc = 0;
		}
		
		if direc = 5 {
			direc = 1;
		}
	}
	
	if velocidadeH != 0 {
		if direcao = 1 || direc = 0 {
			direc = 4;
		}
		
		if direcao = -1 || direc = 1{
			direc = 5;
		}
	}
	
	if !hit {
		if walk {
			velocidade = 1;
		}
	
		if place_meeting(x + velocidadeH, y, objColisParede) {
			direcao *= -1;
		}
	
		if wait("t_walk3", 1) {
			walk = !walk;
			velocidade = 0;
		}
	}
	
	if !podeCair{
		if !place_meeting(x + (velocidadeH * 10), y + 1, objColisParede) {
			direcao *= -1;
		}
	}
}

function scrDirecPig3() {
	switch direc {
		case 0:
			scrChangeSprite(sprPigBoxIdle);
			image_xscale = -1;
		break;
		
		case 1:
			scrChangeSprite(sprPigBoxIdle);
			image_xscale = 1;
		break;
		
		case 2:
			scrChangeSprite(sprPigBoxPicking);
			image_xscale = -1;
		break;
		
		case 3:
			scrChangeSprite(sprPigBoxPicking);
			image_xscale = 1;
		break;
		
		case 4:
			scrChangeSprite(sprPigBoxRun);
			image_xscale = -1;
		break;
		
		case 5:
			scrChangeSprite(sprPigBoxRun);
			image_xscale = 1;
		break;
		
		case 6:
			scrChangeSprite(sprPigBoxThrowing);
			image_xscale = -1;
		break;
		
		case 7:
			scrChangeSprite(sprPigBoxThrowing);
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

function scrPigBoxAttack() {
	scrDirecPig3();
	scrCollision();
	velocidadeH = 0;

//Sprite da Direita
	if direc = 0 || direc = 4 {
		direc = 6;
	}
		
//Sprite da Esquerda
	if direc = 1 || direc = 5 {
		direc = 7;
	}
	
//Se Dead for True
	if dead {
		if direc = 7 {
			direc = 10;
		}
		
		if direc = 8 {
			direc = 11;
		}
	}
	
//Cria a caixa e joga no inimigo , depois se destroi e cria o Porco normal
	if image_index >= image_number -2 {
		if !dead {
		var _box = instance_create_layer(x, y - 30, "Projeteis_Bombas", objBox);
			if (_box) {
				_box.velocidadeH = -1.8 * image_xscale;
				_box.velocidadeV = -1;
				_box.canDestroy = true;
				_box.boxPig = true;
				var _newPig = instance_create_layer(x, y, "Inimigos", objInimigoPorco);
					_newPig.direc = image_xscale;
					_newPig.direcao = -1 * image_xscale;
				instance_destroy();
			}
		}
	}
}

function scrIsTakingBox() {
	scrCollision();
	scrDirecPig3();
	velocidade = 0;
	velocidadeH = 0;
//Se nao pegou a caixa
	if !boxOk {
		if direcao = 1 {
			direc = 2;
		}
	
		if direcao = -1 {
			direc = 3;
		}
		if scrFimAnimacao() {
			boxOk = true;
		}
	}
	
//Se pegou a caixa
	if boxOk {
		if direc = 2 {
			direc = 0;
		}
	
		if direc = 3 {
			direc = 1;
		}
		if scrFimAnimacao() {
			boxOk = false;
			estado = scrPig3Move;
		}
	}
	
//Se Dead for True
	if dead {
		if direc = 2 {
			direc = 10;
		}
		
		if direc = 3 {
			direc = 11;
		}
	}
}