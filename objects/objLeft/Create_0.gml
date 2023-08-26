/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

touch_id = -1;
input = function (_touch_id, _mouse_x, _mouse_y)
{
	touch_id = _touch_id;
}


view_x = display_get_gui_width() - x;
view_y = display_get_gui_height() - y;
