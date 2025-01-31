/// @description Alcanzado por la explosion

if (other.image_alpha > 0.8)
{
	if !(collision_line(x, y, other.x, other.y,obj_colisiones,false,false))	   
	{
		if ((instance_exists(obj_player)) && (ds_list_find_index(obj_explosion.enemigos_alcanzados,id) == -1) && (object_index<>obj_player))
		{
			obj_player.puntos += puntos;
			ds_list_add(obj_explosion.enemigos_alcanzados,id);
			instance_create_layer(x,y,"Rayos",obj_rajos);
		}
		
		estado = ESTADOS_POSIBLES.MUERTO;
	}
}