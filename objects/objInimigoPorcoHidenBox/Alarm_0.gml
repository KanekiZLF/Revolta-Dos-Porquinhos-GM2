/// @description Define morto
// You can write your code in this editor
lifes -= lifes;
boxDirec = 1;

if boxDirec = 1 {
	var _newBox = instance_create_layer(x, y - 8, "Inimigos", objBox);
	_newBox.canDestroy = true;
	_newBox.boxPig = true;
	boxDirec = 0;
}