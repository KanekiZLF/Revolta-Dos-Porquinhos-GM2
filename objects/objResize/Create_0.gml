/// @description Display Properties
switch (os_type) {
	case os_windows:
		global.configOS = 0;
	break;
	
	case os_android:
		global.configOS = 1;
	break;
	
	case os_operagx:
		global.configOS = 2;
	break;
}

if global.configOS == 0 || global.configOS == 1 {
	ideal_width=0;
	ideal_height=192;
	zoom=1;

	display_width=display_get_width();
	display_height=display_get_height();

	aspect_ratio=display_width/display_height;

	ideal_width=round(ideal_height*aspect_ratio);
	//ideal_height=round(ideal_width / aspect_ratio);

	//Perfect Pixel Scaling
	if(display_width mod ideal_width != 0)
	{
	  var d = round(display_width/ideal_width);
	  ideal_width=display_width/d;
	}
	if(display_height mod ideal_height != 0)
	{
	  var d = round(display_height/ideal_height);
	  ideal_height=display_height/d;
	}

	//Check for odd numbers
	if(ideal_width & 1)
	  ideal_width++;
	if(ideal_height & 1)
	  ideal_height++;
    
	//Calculate Max Zoom
	max_zoom=floor(display_width/ideal_width);  
  
	for(var i=1; i<=room_last; i++)
	{
	  if(room_exists(i))
	  {
	    room_set_view(i,0,true,0,0,ideal_width,ideal_height,0,0,ideal_width,ideal_height,0,0,0,0,-1);
	    room_set_view_enabled(i,true);
	  }
	}

	window_set_size(ideal_width,ideal_height);
	display_set_gui_size(ideal_width, ideal_height);
	surface_resize(application_surface,ideal_width*zoom,ideal_height*zoom);
}

alarm[0]=1; //Sorry.  This line got left out of the tutorial vid.  This will center the window after the initial resizing.
alarm[2] = 1;




