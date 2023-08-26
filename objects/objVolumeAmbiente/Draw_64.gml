/// @description Insert description here
// You can write your code in this editor
if global.audio && (global.configOS == 0 || global.configOS == 1) {
	x = display_get_gui_width()/2 - 26;
	y = display_get_gui_height()/2 - 20;
	draw_self();
	draw_sprite_part(sprite_index, 1, 0, 0, sprite_width*value, sprite_height, x, y-sprite_get_yoffset(sprite_index));
	draw_sprite(sprCircleSlider, 0, x+sprite_width*value, y);
	draw_set_font(fnTextoSliders);
	draw_set_color(c_white);
	draw_set_halign(fa_center);
	draw_set_valign(fa_center);
	draw_text_transformed(x+sprite_width + 14, y+1, floor(value * 100), .25, .25, 1);
	draw_text_transformed(x - 22, y, "Ambiente", .3, .3, 1);
	draw_set_color(c_white); // <-- Reseta a cor
	draw_set_font(c_white); // <-- Reseta a fonte
	draw_set_halign(fa_none); // <-- Reseta o alinhamento HORIZONTAL
	draw_set_valign(fa_none); // <-- Reseta o alinhamento VERTICAL
} else if global.audio && global.configOS == 2 {
	x = display_get_gui_width()/2 - 70;
	y = display_get_gui_height()/2 - 70;
	draw_self();
	draw_sprite_part_ext(sprite_index, 1, 0, 0,sprite_get_width(sprite_index)*value, sprite_height, x, y-sprite_get_yoffset(sprite_index)-5, 3, 3, c_white, 1);
	draw_sprite_ext(sprCircleSlider, 0, x+sprite_width*value, y, 2.5, 2.5, 0, c_white, 1);
	draw_set_font(fnTextoSliders);
	draw_set_color(c_white);
	draw_set_halign(fa_center);
	draw_set_valign(fa_center);
	draw_text_transformed(x+sprite_width + 40, y+1, floor(value * 100), 1, 1, 1);
	draw_text_transformed(x - 60, y, "Ambiente", 1, 1, 1);
	draw_set_color(c_white); // <-- Reseta a cor
	draw_set_font(c_white); // <-- Reseta a fonte
	draw_set_halign(fa_none); // <-- Reseta o alinhamento HORIZONTAL
	draw_set_valign(fa_none); // <-- Reseta o alinhamento VERTICAL
}