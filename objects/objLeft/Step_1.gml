/// @description Insert description here
// You can write your code in this editor
if (touch_id != -1 && !global.pause)
{
	if (device_mouse_check_button(touch_id, mb_left))
	{
		keyboard_key_press(ord("A"));
		alpha = 0.8;
	}
	else
	{
		keyboard_key_release(ord("A"));
		touch_id = -1;
		alpha = 0.5;
	}
}
