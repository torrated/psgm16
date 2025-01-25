/// @description Pinta las instancias, comprueba cuándo activarlas y cuándo destruirse.

if (pause_i == max_pause)
{
	instance_activate_all();
	instance_destroy();
}
else
{
	pause_i += 1; 
	for (var _i = 0; _i < instancias_desactivadas; _i++)
	{

		if ((instancias[_i].sprite_index <> -1) && (instancias[_i].object_index <> obj_colisiones))
			draw_sprite_ext(instancias[_i].sprite_index,
							instancias[_i].image_index,
							instancias[_i].x,
							instancias[_i].y,
							instancias[_i].image_xscale,
							instancias[_i].image_yscale,
							instancias[_i].image_angle,
							instancias[_i].image_blend,
							instancias[_i].image_alpha
							);
	}
}