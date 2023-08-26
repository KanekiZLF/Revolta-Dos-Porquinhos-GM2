/// @description Insert description here
// You can write your code in this editor
scrSaveMenu();
scrSaveGame();
/*
//Array de Saves
var _saveData = array_create(0); // <-- Cria uma matriz com zero de entrada (Vazia)

//Estrutura da Matriz de instancias que seram adicionadas ao nosso array
with (objEntidade) {

	var _saveEntity = 
	{
		obj : object_get_name(object_index),
		y : y,
		x : x,
		lifes : global.lifes,
		diamonds : global.diamonds,
		currentLevel : global.currentRoom,
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
	}
	array_push(_saveData, _saveEntity);
}

//Transformando todos os dados em um JSON String por meio de buffer
var _string = json_stringify(_saveData);
var _buffer = buffer_create(string_byte_length(_string) +1, buffer_fixed, 1);
buffer_write(_buffer, buffer_string, _string);
buffer_save(_buffer, "savedgame.save");
buffer_delete(_buffer);

show_debug_message("Jogo salvo ! "+ global.currentRoom + _string)
*/