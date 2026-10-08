if (!place_meeting(x + (1 * image_xscale), y + 1, layer_tilemap_get_id("Chao")) && place_meeting(x, y + 6, objPlataformas)) {
	objColisParede = objPlataformas;
} else {
	objColisParede = layer_tilemap_get_id("Chao");
}