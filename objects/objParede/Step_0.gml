/// @description Insert description here
// You can write your code in this editor
scrDirec();
sprite_index = sprPlayer;
script_execute(estado);
//Define se esta atacando e coloca um tempo para atacar novamente
if attack {
	if mouse_check_button_pressed(mb_any){
		ds_list_clear(inimigos_atingidos);
		image_index = 0;
		alarm[2] = 30;
		isAttacking = true;
		attack = false;
		velocidade = 0;
	}
}

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

if place_meeting(x, y + 1, objBlockJump) {
	blockJump = true;
} else {
	blockJump = false;
}