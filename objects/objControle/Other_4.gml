/// @description Insert description here
// You can write your code in this editor
if global.canSalve && (global.configOS == 0 || global.configOS == 1) { //<--Salva o jogo
	if room != TelaInicial {
		scrSaveGame();
		scrSaveMenu();
	}
}

global.inimigosNumber = instance_number(objInimigoPorco) + instance_number(objInimigoPorcoBomb) + instance_number(objInimigoPorcoBox) + instance_number(objInimigoPorcoHidenBox);
