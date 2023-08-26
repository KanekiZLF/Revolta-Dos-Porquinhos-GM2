// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function scrPig2Move() {
scrDirecPig2();
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
	
		if wait("t_walk2", 1) {
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

function scrDirecPig2() {
	switch direc {
		case 0:
			scrChangeSprite(sprPigBombIdle);
			image_xscale = -1;
		break;
		
		case 1:
			scrChangeSprite(sprPigBombIdle);
			image_xscale = 1;
		break;
		
		case 2:
			scrChangeSprite(sprPigBombPicking);
			image_xscale = -1;
		break;
		
		case 3:
			scrChangeSprite(sprPigBombPicking);
			image_xscale = 1;
		break;
		
		case 4:
			scrChangeSprite(sprPigBombRun);
			image_xscale = -1;
		break;
		
		case 5:
			scrChangeSprite(sprPigBombRun);
			image_xscale = 1;
		break;
		
		case 6:
			scrChangeSprite(sprPigBombLance);
			image_xscale = -1;
		break;
		
		case 7:
			scrChangeSprite(sprPigBombLance);
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
		if direc = 0 || direc = 4 || direc = 6 {
			direc = 8;
		}
		
		if direc = 1 || direc = 5 || direc = 7 {
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

function scrPigBombAttack() {
	scrDirecPig2();
	scrCollision();
	velocidadeH = 0;
	
	if direc = 0 || direc = 4 {
		direc = 6;
	}
		
	if direc = 1 || direc = 5 {
		direc = 7;
	}
	
	//Se Dead for True
	if dead {
		if direc = 6 {
			direc = 10;
		}
		
		if direc = 7 {
			direc = 11;
		}
	}
	
	if scrFimAnimacao() {
		if !dead {
		var _bomba = instance_create_layer(x, y - 10, "Projeteis_Bombas", objBomb);
			if (_bomba) {
				_bomba.velocidadeH = -1.8 * image_xscale;
				_bomba.velocidadeV = -2;
				_bomba.bombIsOn = true; //<-- Ativa o cronometro da bomba que ira por sua vez, determinar o tempo entre Acesa e Explodindo
				var _newPig = instance_create_layer(x, y, "Inimigos", objInimigoPorco);
					_newPig.direc = image_xscale;
					_newPig.direcao = -1 * image_xscale;
				instance_destroy();
			}
		}
	}
}

function scrIsTaking() {
	scrCollision();
	scrDirecPig2();
	velocidade = 0;
	velocidadeH = 0;
	
//Se não pegou a Bomba
	if !bombOk {
		if direcao = 1 {
			direc = 2;
		}
	
		if direcao = -1 {
			direc = 3;
		}
		if scrFimAnimacao() {
			bombOk = true;
		}
	}
	
//Se pegou a Bomba
	if bombOk {
		if direc = 2 {
			direc = 0;
		}
	
		if direc = 3 {
			direc = 1;
		}
		if scrFimAnimacao() {
			bombOk = false;
			estado = scrPig2Move;
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