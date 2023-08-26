/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
depth = -y;
var _mouse = position_meeting(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), id);

if global.configOS == 2 {
	image_xscale = .6;
	image_yscale = .6;
}

if global.creditos && _mouse && mouse_check_button_pressed(mb_any) {
	image_index += 1;
}

