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
velocidad_caminar = velocidad_caminar_inicial;
velocidad_correr = velocidad_caminar * 2;

if (room == StartRoom or room == RoomChangeLevel)
	puede_moverse = false;
else
	puede_moverse = true;