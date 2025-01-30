/// @description 
alarm[0] = 30; // hace desaparecer la instancia

character = noone;

if !(instance_exists(obj_hit_stop))
	instance_create_layer(0,0,layer,obj_hit_stop);