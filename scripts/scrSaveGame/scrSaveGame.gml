// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scrSaveGame() {
	if (room != TelaInicial) {
	//Array de Saves
	var _saveData = array_create(0); // <-- Cria uma matriz com zero de entrada (Vazia)

	//Estrutura da Matriz de instancias que seram adicionadas ao array
	with (objEntidade) {

		var _saveEntity = 
		{
			obj : object_get_name(object_index),
			y : y,
			x : x,
			lifes : global.lifes,
			diamonds : global.diamonds,
			currentLevel : global.currentRoom,
			score : global.points,
		}
		array_push(_saveData, _saveEntity);
	}

	with (objPaiItens) {

		var _saveEntity = 
		{
			obj : object_get_name(object_index),
			y : y,
			x : x,
			diamonds : global.diamonds,
			lifes : global.lifes,
			currentLevel : global.currentRoom,
			score : global.points,
		}
		array_push(_saveData, _saveEntity);
	}

	with (objPlayer) {

		var _saveEntity = 
		{
			obj : object_get_name(object_index),
			y : y,
			x : x,
			diamonds : global.diamonds,
			lifes : global.lifes,
			currentLevel : global.currentRoom,
			score : global.points,
		}
		array_push(_saveData, _saveEntity);
	}

	//Transformando todos os dados em um JSON String por meio de buffer
	var _string = json_stringify(_saveData);
	var _buffer = buffer_create(string_byte_length(_string) +1, buffer_fixed, 1);
	buffer_write(_buffer, buffer_string, _string);
	if global.save1 {
		buffer_save(_buffer, "saved1.save");
		global.save2 = false;
		global.save3 = false;
	}
	
	if global.save2 {
		buffer_save(_buffer, "saved2.save");
		global.save1 = false;
		global.save3 = false;
	}
	
	if global.save3 {
		buffer_save(_buffer, "saved3.save");
		global.save1 = false;
		global.save2 = false;
	}
	buffer_delete(_buffer);
	show_debug_message("Jogo Salvo!");
	}
}

function scrLoadSave() {
	audio_stop_sound(sndBoom);
	audio_stop_sound(sndBoxBroken);
	audio_stop_sound(sndWick);
//Apagando os objetos antigos do jogo para serem colocados os novos
	with (objEntidade) instance_destroy();
	with (objPlayer) instance_destroy();
	with (objPaiItens) instance_destroy();

//Carregando o Save do Jogo
	if (file_exists("saved1.save") || (file_exists("saved2.save")) || (file_exists("saved3.save"))) {

	if global.save1 {
		var _buffer = buffer_load("saved1.save");
		global.save2 = false;
		global.save3 = false;
	}
	
	if global.save2 {
		var _buffer = buffer_load("saved2.save");
		global.save1 = false;
		global.save3 = false;
	}
	
	if global.save3 {
		var _buffer = buffer_load("saved3.save");
		global.save1 = false;
		global.save2 = false;
	}
		var _string = buffer_read(_buffer, buffer_string);
		buffer_delete(_buffer);
	
		var _loadData = json_parse(_string);
	
		while (array_length(_loadData) > 0 ) {
			var _loadEntity = array_pop(_loadData);
			with(instance_create_layer(0, 0, layer, asset_get_index(_loadEntity.obj))) {
				global.lifes = _loadEntity.lifes;
				global.diamonds = _loadEntity.diamonds;
				global.points = _loadEntity.score;
				x = _loadEntity.x;
				y = _loadEntity.y;
				var level = asset_get_index(_loadEntity.currentLevel);
				room_goto(level);
			}
		}
	}
		show_debug_message("Carregado");
}

//Esta função serve para salvar o menu
function scrSaveMenu() {
	//Array de Saves
	var _saveData = array_create(0); // <-- Cria uma matriz com zero de entrada (Vazia)

	//Estrutura da Matriz de instancias que seram adicionadas ao array
	with (objPaiSaves) {

		var _saveEntity = 
		{
			obj : object_get_name(object_index),
			x : x,
			y : y,
			direc : direc,
		}
		array_push(_saveData, _saveEntity);
	}

	//Transformando todos os dados em um JSON String por meio de buffer
	var _string = json_stringify(_saveData);
	var _buffer = buffer_create(string_byte_length(_string) +1, buffer_fixed, 1);
	buffer_write(_buffer, buffer_string, _string);
	buffer_save(_buffer, "savedmenu.save");
	show_debug_message("Menu Salvo");
}

//Esta função serve para carregar o menu
function scrLoadMenu() {
//Apagando os objetos antigos do jogo para serem colocados os novos
with (objPaiSaves) instance_destroy();


//Carregando o Save do Jogo
	if (file_exists("savedmenu.save")) {
		var _buffer = buffer_load("savedmenu.save");
		var _string = buffer_read(_buffer, buffer_string);
		buffer_delete(_buffer);
	
		var _loadData = json_parse(_string);
	
		while (array_length(_loadData) > 0 ) {
			var _loadEntity = array_pop(_loadData);
			with(instance_create_layer(0, 0, layer, asset_get_index(_loadEntity.obj))) {
				direc = _loadEntity.direc;
				x = _loadEntity.x;
				y = _loadEntity.y;
			}
		}
		show_debug_message("Menu Carregado");
	}
}