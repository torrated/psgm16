/// @description 


// inicia el parpadeo
if ((tiempo < umbral_1) && !(parpadeo_iniciado))
{
    parpadeo_iniciado = true;
    alarm[1] = 1;
}

// apaga el parpadeo
if ((tiempo >= umbral_1) && parpadeo_iniciado)
    parpadeo_iniciado = false;


// crea la explosion
if ((tiempo == 0) && !(instance_exists(obj_explosion)) && !explosion_creada)
{
    if (instance_exists(obj_player))
	{
		//obj_player.alarm[0] = 1;
		instance_create_layer(obj_player.x, obj_player.y, "Explosion", obj_explosion,{image_xscale:0});
		explosion_creada = true;
	}
}