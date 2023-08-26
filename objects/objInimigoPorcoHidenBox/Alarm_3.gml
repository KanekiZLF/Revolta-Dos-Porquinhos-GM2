/// @description Tela Inicial
// Você pode escrever seu código neste editor
var _newPig = instance_create_layer(x, y-2, "Inimigos", objInimigoPorco);
_newPig.direc = image_xscale;
_newPig.direcao = -1 * image_xscale;
var _box = instance_create_layer(x, y-4, "Projeteis_Bombas", objBox);
_box.hit = true;
instance_destroy();