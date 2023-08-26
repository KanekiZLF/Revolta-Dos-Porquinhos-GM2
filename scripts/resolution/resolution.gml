/// This script contains functions for mng_Display

// Define the target height (which will in most cases be the minimal height)
#macro TARGET_HEIGHT 192
// Define a maximum height (otherwise the maximum height is twice the target height)
#macro MAX_HEIGHT 192

// Read settings
function readSettings() {
	with (mngDisplay) {
		// Read settings
		ini_open("settings.ini");

		// Read display settings
		RES_W = ini_read_real("DISPLAY", "ResolutionWidth", display_get_width());
		RES_H = ini_read_real("DISPLAY", "ResolutionHeight", display_get_height());
		FULLSCREEN = ini_read_real("DISPLAY", "Fullscreen", true);

		// Close settings
		ini_close();
	}
}

// Apply the settings
function applyDisplaySettings(){
	with (mngDisplay) {
		// Derrive the correct height for the camera
		var n = floor(RES_H/TARGET_HEIGHT);
		VIEW_HEIGHT = ceil(RES_H/n); // This means TARGET_HEIGHT is the minimum height
    
                // Prevent the height from exceeding the maximum height
		while VIEW_HEIGHT >= MAX_HEIGHT { //
		    n++;
		    VIEW_HEIGHT = ceil(RES_H/n);
		}

		// Derrive the ideal width
		VIEW_WIDTH = ceil(VIEW_HEIGHT * RES_W/RES_H);
			
		// To determine the ports, we need display sizes
		W_PORT = VIEW_WIDTH * n;
		H_PORT = VIEW_HEIGHT * n;
		if FULLSCREEN {
			W_PORT = display_get_width();
			H_PORT = display_get_height();
		}

		// Change the views
		var i = room_first;
		while (room_exists(i)) {
			room_set_view_enabled(i, true);
			room_set_camera(i, 0, camera_create_view(0, 0, VIEW_WIDTH, VIEW_HEIGHT));
			room_set_viewport(i, 0, true, 0, 0, W_PORT, H_PORT);
			
			i = room_next(i);
		}
		
		// Specifically change the current room, as it's not changed using room_set functions(?)
		view_camera[0] = camera_create_view(0, 0, VIEW_WIDTH, VIEW_HEIGHT);
		view_xport[0] = 0;
		view_yport[0] = 0;
		view_wport[0] = W_PORT;
		view_hport[0] = H_PORT;
	
		// Resize the app surface
		surface_resize(application_surface, VIEW_WIDTH, VIEW_HEIGHT);
		
		// Handle window size & position
		if !FULLSCREEN {
		    window_set_size(RES_W, RES_H);
		    window_set_position((display_get_width() - RES_W)/2, (display_get_height() - RES_H)/2);
		}
	}
}



#region Camera do Player
function moveCamera() {
	//Variaveis
	static _gridX = 190, _gridY = 190;
	
	//Posição do Player
	 var xPlayer, yPlayer;
	 
	 //Achando Posição do Player na grid
	 xPlayer = (x div _gridX) * _gridX;
	 yPlayer = (y div _gridY) * _gridY;

	 //Movimento suave da camera
	 //var camX = lerp(camera_get_view_x(view_camera[0]), xPlayer, .1);
	 var camY = lerp(camera_get_view_y(view_camera[0]), yPlayer, .1);
	 
	 //Ajustando a posição da camera
	 camera_set_view_pos(view_camera[0], 0, camY);

}
#endregion