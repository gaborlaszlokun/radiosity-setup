

#declare LDRAW_RAD_LEVEL = 5;
#declare LDRAW_MTL = 10;
#declare INDEXOFREFRACTION=1.52;
#declare LDRAW_RAD_NORMAL = off;
#declare LDRAW_RAD_MEDIA = off;

#include "rad_def.inc"
global_settings {
  assumed_gamma 1.4
  max_trace_level LDRAW_MTL
  adc_bailout 0.01/2
  radiosity {
    Rad_Settings(LDRAW_RAD_LEVEL, LDRAW_RAD_NORMAL, LDRAW_RAD_MEDIA)
  }
}

sphere {
	  <0,0,0>,10000          
	  pigment {
	    image_map { hdr "C:/Users/ASUS/Google Drive/Lego/probes/20100905-21_lp.hdr" once interpolate 2 map_type 1 }
	  }
	  finish { ambient 1 diffuse 0 }
	  hollow  
	} 
	
light_source {
	  <-5000,-5000,-5000>
	  color rgb .4
	  area_light 200, 200, 10, 10
	  adaptive 1
	  jitter
	  circular
	  orient
	}
	 
#include "koyancolours.inc" 
