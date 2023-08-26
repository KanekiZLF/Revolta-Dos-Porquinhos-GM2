/// @description Insert description here
// You can write your code in this editor
scrLoadSave();
scrLoadMenu();
/* 
//Apagando estado atual do jogo
with (objEntidade) instance_destroy();
with (objPlayer) instance_destroy();
with (objPaiItens) instance_destroy();


//Carregando o Save do Jogo
if (file_exists("savedgame.save")) {

	var _buffer = buffer_load("savedgame.save");
	var _string = buffer_read(_buffer, buffer_string);
	buffer_delete(_buffer);
	
	var _loadData = json_parse(_string);
	
	while (array_length(_loadData) > 0 ) {
		var _loadEntity = array_pop(_loadData);
		with(instance_create_layer(0, 0, layer, asset_get_index(_loadEntity.obj))) {
			global.lifes = _loadEntity.lifes;
			global.diamonds = _loadEntity.diamonds;
			x = _loadEntity.x;
			y = _loadEntity.y;
			var level = asset_get_index(_loadEntity.currentLevel);
			room_goto(level);
		}
	}
	show_debug_message("Jogo carregado!" + _string);
}
*/