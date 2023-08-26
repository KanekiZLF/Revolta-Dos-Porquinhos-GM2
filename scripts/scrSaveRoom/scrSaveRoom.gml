// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/* Atualment sem USO !!
function scrSaveRoom() {
	var _diamond = instance_number(objDiamond);
	var _box = instance_number(objBox);
	
	var _roomStruct = {
		diamondNum : _diamond,
		diamondData : array_create(_diamond),
		boxNum : _box,
		boxData : array_create(_box),
		
	}
	
	for (var i = 0; i < _diamond; i++) {
		var _inst = instance_find(objDiamond, i);
		
		_roomStruct.diamondData[i] = {
			x : _inst.x,
			y : _inst.y,
		
		}
	}
	
	for (var i = 0; i < _box; i++) {
		var _inst = instance_find(objBox, i);
		
		_roomStruct.boxData[i] = {
			x : _inst.x,
			y : _inst.y
		}
	}
	
	if room_get_name(room) == "Menu" {global.levelData.level_1 = _roomStruct};
	if room_get_name(room) == "rmModelo" {global.levelData.level_2 = _roomStruct};
}

function scrLoadRoom() {
	var _roomStruct = 0;
	
	if room_get_name(room) == "Menu" {global.levelData.level_1 = _roomStruct};
	if room_get_name(room) == "rmModelo" {global.levelData.level_2 = _roomStruct};
	
	if !is_struct(_roomStruct) {exit};
	
	if instance_exists(objDiamond) {instance_destroy(objDiamond);};
	for (var i = 0; i < _roomStruct.diamondNum; i++) {
		instance_create_layer(_roomStruct.diamondNum[i].x, _roomStruct.diamondNum[i].y, layer, objDiamond);
	}
	
	if instance_exists(objBox) {instance_destroy(objBox);};
	for (var i = 0; i < _roomStruct.boxNum; i++) {
		instance_create_layer(_roomStruct.boxNum[i].x, _roomStruct.boxNum[i].y, layer, objBox);
	}
}

function scrSaveGame2() {
	var _saveArray = array_create(0);
	
	scrSaveRoom();
	
	global.statData.save_x = objPlayer.x;
	global.statData.save_y = objPlayer.y;
	global.statData.save_room = room_get_name(room);
	
	global.statData.diamonds = global.diamonds;
	global.statData.heart = global.lifes;
	array_push(_saveArray, global.statData);
	
	//Salva os dados da sala
	array_push(_saveArray, global.levelData);
	
	var _fileName = "savedata.sav";
	var _json = json_stringify(_saveArray);
	var _buffer = buffer_create(string_byte_length(_json) + 1, buffer_fixed, 1);
	buffer_write(_buffer, buffer_string, _json);
	
	buffer_save(_buffer, _fileName);
	
	buffer_delete(_buffer);
}

function scrLoadGame() {
	//Carrenado o data salvo
	var _fileName = "savedata.sav"
	if !file_exists(_fileName) exit;
	
	var _buffer = buffer_load(_fileName);
	var _json = buffer_read(_buffer, buffer_string);
	buffer_delete(_buffer);
	
	var _loadArray = json_parse(_json);
	
	global.statData = array_get(_loadArray, 0);
	global.levelData = array_get(_loadArray, 1);
	
	global.diamonds = global.statData.diamonds;
	global.lifes = global.statData.heart;
	
	var _loadRoom = asset_get_index(global.statData.save_room);
	room_goto(_loadRoom);
	
	if instance_exists(objPlayer){instance_destroy(objPlayer);};
	instance_create_layer(global.statData.save_x, global.statData.save_y, layer, objPlayer);
	
	scrLoadRoom();
}