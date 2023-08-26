/// @description Verifica se foi selecionado
value = audio_group_get_gain(Efeitos_Sonoros); //<-- Padrão .5 Metade do volume

if global.configOS == 2 {
	image_xscale = 3;
	image_yscale = 3;
}

var _mouse = position_meeting(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), id);

	
if(_mouse && mouse_check_button_pressed(mb_left)) && global.audio {
		selected = true;
}


if (mouse_check_button_released(mb_left)) {
	selected = false;
}

if selected {
	value = clamp((device_mouse_x_to_gui(0)-x)/sprite_width, 0, maxValue);
	audio_group_set_gain(Efeitos_Sonoros, value, 0);
}
