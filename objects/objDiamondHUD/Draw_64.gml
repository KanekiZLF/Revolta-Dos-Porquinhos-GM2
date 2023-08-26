/// @description Insert description here
// You can write your code in this editor
if !global.menu && global.controls && (global.configOS == 0 || global.configOS == 1) {
	draw_text_transformed(x + 8, y - 4, "x" + string(global.diamonds), .15, .15, 0);
	draw_self();
} else if !global.menu && global.controls && global.configOS == 2 {
	draw_text_transformed(x + 32, y - 14, "x" + string(global.diamonds), .6, .6, 0);
	draw_self();
}