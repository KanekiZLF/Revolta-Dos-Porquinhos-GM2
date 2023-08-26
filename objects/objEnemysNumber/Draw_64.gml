/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

if !global.opening && !global.menu && room != TelaInicial && global.controls && (global.configOS == 0 || global.configOS == 1 ){
	draw_self();
	draw_text_transformed(x + 8, y - 6, "x" + string(global.inimigosNumber), .15, .15, 0);
}

if !global.opening && !global.menu && room != TelaInicial && global.controls && global.configOS == 2 {
	draw_self();
	draw_text_transformed(x + 32, y - 15, "x" + string(global.inimigosNumber), .6, .6, 0);
}