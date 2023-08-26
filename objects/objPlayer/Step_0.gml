/// @description Insert description here
// You can write your code in this editor
scrDirec();
if keyboard_check_pressed(ord("G")) {
	global.lifes -= 1;
}

if (global.pause) exit;
script_execute(estado);


//Attack fica no objHammer

//Retorna as sprites de parado
if isAttacking {
	if scrFimAnimacao() {
		velocidade = 2;
		isAttacking = false;
	
//Define sprite de atacando 
		if direita || direc = 4{
			direc = 0; //<-- Idle Direita
		}
		
		if esquerda || direc = 5 {
			direc = 1; //<-- Idle Esquerda	
		}
	}
}

//Bloqueia o pulo se estiver colidindo
if (place_meeting(x, y + 1, objBlockMenu)) {
	blockJump = true;
}else if (place_meeting(x, y + 1, objBlockJump) && global.inimigosNumber <= 0) && velocidadeH = 0 {
	blockJump = true;
} else {
	blockJump = false;
}



var _instDoor = instance_place(x, y, objDoor)
if place_meeting(x, y, _instDoor) {
	if keyboard_check_pressed(ord("W")) && _instDoor.canOpen && !isDead && velocidadeV = 0 && velocidadeH = 0 && global.inimigosNumber <= 0 {
		moveOn = false;
		direc = 12;
		alturaPulo = 0;
		velocidade = 0;
		audio_stop_sound(sndBoom);
		audio_stop_sound(sndBoxBroken);
		audio_stop_sound(sndWick);
		x = _instDoor.x;
		y = _instDoor.y;
	}
	
	if keyboard_check_pressed(ord("W")) && global.inimigosNumber > 0 && delayText && _instDoor.canOpen && velocidadeH = 0 {
		var _inst = instance_create_layer(x, y, "Saves", objEnemyRest);
		_inst.alvo = other;
		delayText = false;
	}
	if wait("delayTimer", 1) {
		delayText = true;
	}
}

if global.lifes <= 0 {
	isDead = true;
	velocidadeH = 0;
	alturaPulo = 0;
	puloInimigo = 0;
	global.gameover = true;
}

//Colisor X Caixa
if place_meeting(x + velocidadeH, y, objBox){
	while !place_meeting(x + sign(velocidadeH), y, objBox){
		x += sign(velocidadeH);
}
	velocidadeH = 0;
}

//Colisao Y Caixa
if place_meeting(x, y + velocidadeV, objBox){
	while !place_meeting(x, y + sign(velocidadeV), objBox){
		y += sign(velocidadeV); 
}
	velocidadeV = 0;
}

//Bloquea o player na tela de menu
if place_meeting(x, y, objBlockMenu) {
	velocidade = 0;
	alturaPulo = 0;
} else {
	velocidade = 2;
	alturaPulo = pulo;
}
if global.configOS == 0 || global.configOS == 1 {
	scrCamera();
}
//moveCamera();

//Se o player não estiver na tela de Menu, então
if !global.menu && !global.saves && !global.options && !global.audio && !global.notification {
//Destroi os objetos que bloqueam o player
	var _block = instance_place(objPlayer.x, objPlayer.y, objBlockMenu);
	if (_block) {
		instance_destroy(_block);
	}
}

if global.lifes <= 0 && !playSound {
	audio_stop_all();
	audio_play_sound(sndGameOver, 1, 0);
	playSound = true;
}

if playSoundJump {
	audio_play_sound(sndJump, 1, 0);
	playSoundJump = false;
}

if playSoundHit {
	audio_play_sound(sndHit, 1, 0);
	playSoundHit = false;
}
