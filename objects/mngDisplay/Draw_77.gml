/// @description Handle the app surface

// Draw the app surface
draw_surface_stretched(application_surface, 0, 0, W_PORT, H_PORT);

// Reset the app surface
surface_set_target(application_surface);
draw_clear_alpha(c_black, 0);
surface_reset_target();