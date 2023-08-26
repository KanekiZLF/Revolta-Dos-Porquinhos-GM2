/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

if global.configOS == 0 || global.configOS == 1 {
	var _cx = camera_get_view_x(view_camera[0]);
	var _cy = camera_get_view_y(view_camera[0]);

	var _x = (xx - _cx) - 32;
	var _y = (yy - _cy) - 16;
	scrDrawOutLine(_x, _y, "Falta: " + string(global.inimigosNumber) + string(_Enemys), .7, c_gray, 7, 10, 1000, escalaX, escalaY, 0);
}
draw_set_font(fnTextos);
draw_set_alpha(alpha);
var _Enemys = string;
if global.inimigosNumber >= 2 {
	_Enemys = " Inimigos";
} else {
	_Enemys = " Inimigo";
}

draw_set_alpha(1);
draw_set_color(c_white);