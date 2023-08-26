/// @description Insert description here
// You can write your code in this editor
if !global.menu && global.controls && (global.configOS == 0 || global.configOS == 1) {
	draw_self();
} else if !global.menu && global.controls && global.configOS == 2 {
	draw_self();
}