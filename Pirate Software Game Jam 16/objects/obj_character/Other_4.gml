/// @description 

salud = salud_inicial;
if ((object_index == obj_player) && (instance_exists(obj_inicio)))
{
	x = obj_inicio.x;
	y = obj_inicio.y;
	estado = ESTADOS_POSIBLES.NORMAL;
	x_to = 0;
	y_to = 0;
}