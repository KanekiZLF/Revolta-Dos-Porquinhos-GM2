/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
if global.opening && (global.configOS == 0 || global.configOS == 1 ) {
	draw_set_font(fnTextos);
	draw_set_color(c_white);
	draw_set_valign(fa_center);
	draw_set_halign(fa_center);
	draw_set_alpha(alpha);
	scrDrawOutLine(centerX, y + 10, text, 2, c_black, 4, 10, 1000, scale, scale, 0);
	//draw_text_transformed(centerX /2, y + 10, text, scale, scale, 0);
	draw_set_alpha(1);
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
} else if global.opening && global.configOS == 2 {
	draw_set_font(fnTextos);
	draw_set_color(c_white);
	draw_set_valign(fa_center);
	draw_set_halign(fa_center);
	draw_set_alpha(alpha);
	scrDrawOutLine(centerX, y + 10, text, 4, c_black, 4, 100, 1000, scale, scale, 0);
	//draw_text_transformed(centerX /2, y + 10, text, scale, scale, 0);
	draw_set_alpha(1);
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
}