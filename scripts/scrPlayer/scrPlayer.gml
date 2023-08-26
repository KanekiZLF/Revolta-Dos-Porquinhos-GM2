// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scrPlayer() {
scrDirec();

//Colisao X
	if place_meeting(x + velocidadeH, y, objColisParede) {
	while !place_meeting(x + sign(velocidadeH), y, objColisParede) {
		x += sign(velocidadeH);
	}
		velocidadeH = 0;
	}
	x += velocidadeH;

//Colisao Y
	if place_meeting(x, y + velocidadeV, objColisParede) {
		while !place_meeting(x, y + sign(velocidadeV), objColisParede) {
			y += sign(velocidadeV); 
	}
		velocidadeV = 0;
		isJumping = false;
		isFall = false;
		if place_meeting(x, y + 1, objColisParede) {
			doubleJump = 0;
		}
	}
	y += velocidadeV;
	
	if moveOn && !isDead {
// Movimentação
		direita = keyboard_check(ord("D"));
		esquerda = keyboard_check(ord("A"));
		if !blockJump {
			cima = keyboard_check_pressed(ord("W"))
		}
	}

velocidadeH = (direita - esquerda) * velocidade;
//Gravidade
	if !place_meeting(x, y + 1, objColisParede) {
		velocidadeV += gravidade;
	}
	
//Empurra durante um determinado tempo
	if alarm[1] > 0 {
		velocidadeH = lengthdir_x(3, empurrarDir);
	} 
//Caso não esteja atacando, vai definir as sprites, se não, ele ignora essa parte
	if !isAttacking || !isDead {	
//Jump, Double Jump, Pulo, Pulo Duplo
	if cima && doubleJump < 2 {
		playSoundJump = true;
		doubleJump += 1;
		velocidadeV = alturaPulo;
		isJumping = true;
	}
// Define as Direc para selecionar as Sprites
//Define a Sprite Parado
	if velocidadeH = 0 {
		if direc = 2 || direc = 8 {
			direc = 0; //<-- Idle Direita
		}
		
		if direc = 3 || direc = 9 {
			direc = 1; //<-- Idle Esquerda
		}
	}

//Define sprite de andando
	if velocidadeH != 0 && !isJumping{
		if direita {
			direc = 2; //<-- Run Direita
		}
	
		if esquerda {
			direc = 3; //<-- Run Esquerda
		}
	}

//Define se esta caindo ou não
	if velocidadeV >= 0.03 {
		isFall = true;
	}

//Define a sprite do FALL, caindo
	if isFall {
		if direita || direc = 0 || direc = 2 || direc = 6 {
			direc = 8; //<-- Fall Direita
		}
		
		if esquerda || direc = 1 || direc = 3 || direc = 7 {
			direc = 9; //<-- Fall Esquerda
		}
		
//Sobe ao pular na cabeça do inimigo
		var _inimigo = instance_place(x, y + 1, objEntidade)
		
		if _inimigo && !_inimigo.crash {
			velocidadeV = puloInimigo;
			_inimigo.hit = true;
			_inimigo.alarm[0] = 10;
			_inimigo.velocidade = 0;
			_inimigo.velocidadeH = 0;
			_inimigo.direcao = 0;
			_inimigo.crash = true;
			scrCollision();
		}
	}


//Define a sprite do pulo e verifica o fall
	if isJumping && !isFall {
		if direita || direc = 0 || direc = 2 {
			direc = 6;
		}
		
		if esquerda || direc = 1 || direc = 3 {
			direc = 7;
			}
		}
	}


	 if isAttacking && !isJumping && !isFall && !isDead {
//Define sprite de atacando 
		if direita || direc = 0 || direc = 2 {
			direc = 4;
		}
		
		if esquerda || direc = 1 || direc = 3 {
			direc = 5;		
		}
		estado = scrAtacando;
	}

//Define as sprites de morto
	if isDead {
		if direc = 0 || direc = 2 || direc = 4 || direc = 6 || direc = 8 {
			direc = 14; //<-- Dead Direita
		}
		
		if direc = 1 || direc = 3 || direc = 5 || direc = 7 || direc = 9 {
			direc = 15; //<-- Dead Esquerda
		}
	}
}


function scrDirec(){
//Sprites
	switch direc{
		case 0:
			scrChangeSprite(sprPlayerIdle); //<-- Direita
			image_xscale = 1;
		break;
		
		case 1:
			scrChangeSprite(sprPlayerIdle); //<-- Esquerda
			image_xscale = -1;
		break;
		
		case 2:
			scrChangeSprite(sprPlayerRun); //<-- Direita
			image_xscale = 1;
		break;
		
		case 3:
			scrChangeSprite(sprPlayerRun); //<-- Esquerda
			image_xscale = -1;
		break;
		
		case 4:
			scrChangeSprite(sprPlayerAttack); //<-- Direita
			mask_index = sprPlayerAttackHB;
			image_xscale = 1;
		break;
		
		case 5:
			scrChangeSprite(sprPlayerAttack); //<-- Esquerda
			mask_index = sprPlayerAttackHB;
			image_xscale = -1;
		break;
		
		case 6:
			scrChangeSprite(sprPlayerJump); //<-- Direita
			image_xscale = 1;
		break;
		
		case 7:
			scrChangeSprite(sprPlayerJump); //<-- Esquerda
			image_xscale = -1;
		break;
		
		case 8:
			scrChangeSprite(sprPlayerFall); //<-- Direita
			image_xscale = 1;
		break;
		
		case 9:
			scrChangeSprite(sprPlayerFall); //<-- Esquerda
			image_xscale = -1;
		break;
		
		case 10:
			scrChangeSprite(sprPlayerGround); //<-- Direita
			image_xscale = 1;
		break;
		
		case 11:
			scrChangeSprite(sprPlayerGround); //<-- Esquerda
			image_xscale = -1;
		break;
		
		case 12:
			scrChangeSprite(sprPlayerDoorIn);
			global.controls = false;
			tomarDano = false;
		break;
		
		case 13:
			scrChangeSprite(sprPlayerDoorOut);
			if scrFimAnimacao(){
				direc = 0;
				tomarDano = true;
				if !place_meeting(x, y, objBlockMenu) {
					global.controls = true;
				}
				moveOn = true;
				alturaPulo = -5;
			}
		break;
		
		case 14:
			scrChangeSprite(sprPlayerDead); //<-- Direita
			image_xscale = 1;
		break;
		
		case 15:
			scrChangeSprite(sprPlayerDead); //<-- Esquerda
			image_xscale = -1;
		break;
		
		case 16:
			scrChangeSprite(sprPlayerHit); //<-- Direita
			image_xscale = 1;
		break;
		
		case 17:
			scrChangeSprite(sprPlayerHit);  //<-- Esquerda
			image_xscale = -1;
		break;
	}
}

#region Atacando
// Define o estado como atacando
function scrAtacando() {
	velocidade = 0;
	if (place_meeting(x, y, objBomb)){
		var _bomb = instance_place(x, y, objBomb)
		if (_bomb) {
			if _bomb.bombState = 0 {
				if place_meeting(x, y, objBomb) {
					_bomb.bombIsOn = true;
					_bomb.push = true;
				}
			}
		}
	}

	//Criando uma lista para checar os inimigos atingidos em cada frame
	var inimigosHB = ds_list_create();
	
	//Colocar a ID dos inimigos atingindos dentro da lista
	var inimigos = instance_place_list(x, y, objEntidade, inimigosHB, false);
	
	//Se tiver algum inimigo atingido
	if (inimigos) > 0{
		
		//Usar o loop para checar a ID de cada inimigo atingido
		for (var i = 0; i < inimigos; i++){
			var inimigosID = inimigosHB[| i];
			//Comparar a ID do inimigo na lisca local com a lista de inimigos atingidos
			
			if (ds_list_find_index(inimigos_atingidos, inimigosID)) == -1{
				ds_list_add(inimigos_atingidos, inimigosID);
				with(inimigosID){
				lifes -= objPlayer.dano;
				alarm[1] = 15;
				hit = true;
				if lifes > 0 {
					hitSound = true;
					}
				}
			}
		}
	}
	
	ds_list_destroy(inimigosHB);
	
// Define oque sera feito ao fim da animação
	if scrFimAnimacao(){
		velocidade = 2;
		mask_index = sprPlayerIdle;
		estado = scrPlayer;
	}
}
#endregion