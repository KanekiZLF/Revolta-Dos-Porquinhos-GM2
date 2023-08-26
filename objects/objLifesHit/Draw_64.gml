/// @description Insert description here
// You can write your code in this editor
//Desenha animacao das vidas indo embora
if !global.menu && !global.options && global.controls && (global.configOS == 0 || global.configOS == 1) {
	var _scale = 1;
	switch direc {
		case 3:
			draw_sprite_ext(sprSmallHeartHit, -1, x, y, _scale, _scale, 0, c_white, alpha);
			if scrFimAnimacao(){
				image_index = image_number -1;
				alpha -= 0.2;
			}
		break;
	
		case 2:
			draw_sprite_ext(sprSmallHeartHit, -1, x + 11, y, _scale, _scale, 0, c_white, alpha);
			if scrFimAnimacao(){
				image_index = image_number -1;
				alpha -= 0.2;
			}
		break;
	
		case 1:
			draw_sprite_ext(sprSmallHeartHit, -1, x + 22, y, _scale, _scale, 0, c_white, alpha);
			if scrFimAnimacao(){
				image_index = image_number -1;
				alpha -= 0.2;
			}
		break;
	}
} else if !global.menu && !global.options && global.controls && global.configOS == 2 {
	var _scale = 3;
	switch direc {
		case 3:
			draw_sprite_ext(sprSmallHeartHit, -1, x, y, _scale, _scale, 0, c_white, alpha);
			if scrFimAnimacao(){
				image_index = image_number -1;
				alpha -= 0.2;
			}
		break;
	
		case 2:
			draw_sprite_ext(sprSmallHeartHit, -1, x + 30, y, _scale, _scale, 0, c_white, alpha);
			if scrFimAnimacao(){
				image_index = image_number -1;
				alpha -= 0.2;
			}
		break;
	
		case 1:
			draw_sprite_ext(sprSmallHeartHit, -1, x + 61, y, _scale, _scale, 0, c_white, alpha);
			if scrFimAnimacao(){
				image_index = image_number -1;
				alpha -= 0.2;
			}
		break;
	}
}