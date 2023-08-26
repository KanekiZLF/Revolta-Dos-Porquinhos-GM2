/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

var esc = choose(0, 1, 2);
	switch esc {
		case 0:
			var _newPig = instance_create_layer(x, y, "Inimigos", objInimigoPorcoBox);
			_newPig.estado = scrIsTakingBox;
			_newPig.direcao = -1 * image_xscale;
			_newPig.podeAtacar = true;
			instance_destroy();
		break;
		
		case 1:
			var _newPig = instance_create_layer(x, y, "Inimigos", objInimigoPorcoBomb);
			_newPig.estado = scrIsTaking;
			_newPig.direcao = -1 * image_xscale;
			_newPig.podeAtacar = true;
			instance_destroy();
		break;
		
		case 2:
			var _newPig = instance_create_layer(x, y, "Inimigos", objInimigoPorcoHidenBox);
			_newPig.podeAtacar = true;
			instance_destroy();
		break;
	}