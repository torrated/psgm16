/// @description

if (instance_exists(obj_player) && !item_activado)
{
	obj_player.velocidad_caminar *= 1.5;
	obj_player.velocidad_correr *= 1.5;
	item_activado = true;
	alarm[0] = 60; //60 = 1 segundo
}