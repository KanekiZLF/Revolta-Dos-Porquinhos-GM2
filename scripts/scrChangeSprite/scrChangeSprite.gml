// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scrChangeSprite(_sprite) {
	//@arg Sprite
	if (sprite_index != _sprite) {
		sprite_index = _sprite;
		image_index = 0;
	}
}