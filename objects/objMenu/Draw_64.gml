/// @description Insert description here
// You can write your code in this editor
if menuIsOn {
	var _mx = device_mouse_x_to_gui(0);
	var _my = device_mouse_y_to_gui(0);

	var tamMenu = array_length(menuInicial);
	draw_set_font(fnMenu);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	for (var i = 0; i < tamMenu; i++) {
		var _wGui = display_get_gui_width();
		var _hGui = display_get_gui_height();
	
		var _hStr = string_height("I");
		var _wStr = string_width(menuInicial[i]);
	
		var x1 = _wGui / 2 -_wStr / 2;
		var y1 = _hGui / 2 - _hStr / 2 + _hStr * i;
	
		var x2 = _wGui / 2 +_wStr / 2;
		var y2 = _hGui / 2 + _hStr / 2 + _hStr * i;
	
	
		if (point_in_rectangle(_mx, _my, x1, y1, x2, y2)) {
			scale[i] = lerp(scale[i], 1.4, 0.15);
		
			if (mouse_check_button_pressed(mb_any)){
				switch menuInicial[i] {
					case menuInicial[0]: //Jogar
						keyboard_key_press(ord("W")); // <-- Simula a tecla pressionada
						keyboard_key_release(ord("W")); // <-- Simula a tecla solta
						menuIsOn = false;
					break;
				
					case menuInicial[1]:
						instance_destroy(objBlockMenu);
						menuIsOn = false;
					break;
				
					case menuInicial[2]:
						show_message("Opções");
					break;
				
					case menuInicial[3]: 
						game_end();
					break;
				}
			} 
		} else {
			scale[i] = lerp(scale[i], 1, 0.15);
		}
	
		draw_text_transformed(_wGui / 2, _hGui / 2 + (_hStr * i), menuInicial[i], scale[i], scale[i], 0);
	}
}
draw_set_font(-1)
draw_set_halign(-1);
draw_set_valign(-1);