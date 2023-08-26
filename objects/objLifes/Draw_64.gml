/// @description Desenha o Hud da vida
// You can write your code in this editor
if !global.menu && !global.options && global.controls && (global.configOS == 0 || global.configOS == 1) {
	global.lifes = clamp(global.lifes, 0, 3);
	var _scale = 1;
	var _sprl = 5;
	var _buffer = 6;
	var _lifes = global.lifes;
	for(var i = 0; i < _lifes; i++;) {
		draw_sprite_ext(sprSmallHeartIdle, -1 , x + (_sprl * i) + (_buffer * i), y, _scale, _scale, 0, c_white, 1);
		draw_self();
	}
} else if !global.menu && !global.options && global.controls  && global.configOS == 2{
	global.lifes = clamp(global.lifes, 0, 3);
	var _scale = 3;
	var _sprl = 22;
	var _buffer = 10;
	var _lifes = global.lifes;
	for(var i = 0; i < _lifes; i++;) {
		draw_sprite_ext(sprSmallHeartIdle, -1 , x + (_sprl * i) + (_buffer * i), y, _scale, _scale, 0, c_white, 1);
		draw_self();
	}
}
