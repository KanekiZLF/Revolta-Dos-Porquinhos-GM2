/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
if global.creditos && (global.configOS == 0 || global.configOS == 1) {
	x = display_get_gui_width()/2;
	y = display_get_gui_height()/2 + 5;
	draw_self();
} else if global.creditos && global.configOS == 2 {
	x = display_get_gui_width()/2;
	y = display_get_gui_height()/2 + 5;
	draw_self();
}