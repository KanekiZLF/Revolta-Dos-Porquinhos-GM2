/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
yy -= 0.25;
alpha -= 0.01;

if global.configOS == 0 || global.configOS == 1 {
	escalaX = .1;
	escalaY = .1;
} else if global.configOS == 2 {
	escalaX = .4;
	escalaY = .4;
}

if alpha <= 0 {
	instance_destroy();
}