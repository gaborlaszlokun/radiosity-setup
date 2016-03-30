#declare LDRAW_RAD_LEVEL = 5;
	#declare LDRAW_MTL = 10;
	#declare INDEXOFREFRACTION=1.52;
	#declare LDRAW_RAD_NORMAL = off;
	#declare LDRAW_RAD_MEDIA = off;

	#include "rad_def.inc"
	global_settings {
	  assumed_gamma 1.8
	  max_trace_level LDRAW_MTL
	  adc_bailout 0.01/2
	  radiosity {
	    Rad_Settings(LDRAW_RAD_LEVEL, LDRAW_RAD_NORMAL, LDRAW_RAD_MEDIA)
	  }
	}

	sky_sphere {
	  pigment {
	    gradient -y
	    color_map {
	      [ 1 rgb 1 ]
	    }
	  }
	} 
    
   


// Radiosity beallitasok.
#declare LDRAW_MTL = 30;
#declare INDEXOFREFRACTION=1.52;
#declare RADIOSITY = 1;

global_settings {
  assumed_gamma 1.4
  max_trace_level LDRAW_MTL
  #ifdef (RADIOSITY)
    radiosity {
      pretrace_start 0.08
      pretrace_end   0.004
      count 400
      nearest_count 5
      error_bound 0.2
      recursion_limit 1
      low_error_factor 0.7
      gray_threshold 0
      minimum_reuse 0.01
      brightness 1.0
      adc_bailout 0.01/2
  }
  #end
  photons {
      count 300000
      autostop 0
      jitter .4
  }
}