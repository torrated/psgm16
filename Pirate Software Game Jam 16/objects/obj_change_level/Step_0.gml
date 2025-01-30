/// @description

if (instance_exists(obj_controles) 
	&& obj_controles.atacar 
	&& instance_exists(obj_juego)
	&& instance_exists(obj_player)
	)
{
	if (obj_player.vidas > 0)
		room_goto(obj_juego.next_room);
	else
		room_goto(Level1); // DEBUG: esto tiene que ser la pantalla de inicio
}