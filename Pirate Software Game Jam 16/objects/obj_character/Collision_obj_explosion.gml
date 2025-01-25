/// @description Alcanzado por la explosion

if (other.image_alpha > 0.8)
{
	if !(collision_line(x, y, other.x, other.y,obj_colisiones,false,false))	   
	{
		if ((instance_exists(obj_player)) && (ds_list_find_index(obj_explosion.enemigos_alcanzados,id) == -1))
		{
			obj_player.puntos += puntos;
			ds_list_add(obj_explosion.enemigos_alcanzados,id);
		}
		
		estado = ESTADOS_POSIBLES.MUERTO;
	}
}