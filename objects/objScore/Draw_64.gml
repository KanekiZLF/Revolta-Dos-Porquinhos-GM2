/// @description Inserir descrição aqui
// Você pode escrever seu código neste 
if !global.menu && !global.saves && !global.options && !global.audio && !global.notification && global.controls && (global.configOS == 0 || global.configOS == 1) {
	x = x;
	y = y;
	draw_set_font(fnScore);
	draw_set_color(c_white);
	draw_text_ext_transformed(x - 50, y, "Pontos: " + string(global.points), 10, 500, .15, .15, 0);
	draw_set_font(0);
} else if !global.menu && !global.saves && !global.options && !global.audio && !global.notification && global.controls && global.configOS == 2 {
	draw_set_font(fnScore);
	draw_set_color(c_white);
	draw_text_ext_transformed(x + 120, y + 40, "Pontos: " + string(global.points), 10, 500, .6, .6, 0);
	draw_set_font(0);
}