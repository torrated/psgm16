/// @description 
alarm[0] = 30; // hace desaparecer la instancia

character = noone;

if !(instance_exists(obj_hit_stop))
{
	instance_create_layer(0,0,layer,obj_hit_stop);
	audio_play_sound(snd_electricidad,1,false,1,undefined,random_range(0.9,1.1))
}