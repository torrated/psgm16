/// @description 

if ((instance_exists(obj_controles)) && puede_moverse)
{
    x_to = obj_controles.move_x;
    y_to = obj_controles.move_y;
    if (obj_controles.correr)
    {
        velocidad = velocidad_correr;
        corriendo = 1;
		image_speed = 1.5;
    }
    else
    {
        velocidad = velocidad_caminar;
        corriendo = 0;
		sprite_index = spr_player_caminando;
		image_speed = 1;
    }
	if (x_to == 0 && y_to == 0)
	{
		sprite_index = spr_player_quieto;
		image_speed = 1;
	}
		
	if (obj_controles.atacar)
	{
		var _slash = instance_create_layer(x,y,"Personaje",obj_slash,{image_angle:point_direction(x,y,x+x_to,y+y_to)});
	}
}

// Inherit the parent event
event_inherited();