/// @description 

//detectar al jugador en el radio de vision
if (collision_circle(x, y, distancia_vision, obj_player, false, false))
{
    if (!(collision_line(x, y, obj_player.x, obj_player.y,obj_colisiones,false,false))
	&& puede_ver)
    {
        player_detectado = true;
    }
}
else {//detectar al jugador en el radio de oido
    if ((collision_circle(x, y, distancia_oido, obj_player, false, false)) && (obj_player.corriendo))
    {
        player_detectado = true;
        velocidad = velocidad_caminar;
    }
    else { 
        player_detectado = false;
        if ((x == ultima_x) && (y == ultima_y))
        {
            velocidad = 0;
        }
        else {
            velocidad = velocidad_caminar;
        }
    }
}

if (player_detectado)
{
    x_to = (obj_player.x - x)/2;
    y_to = (obj_player.y - y)/2;
    ultima_x = obj_player.x;
    ultima_y = obj_player.y;
    if !(alarma_activa)
        alarm[0] = 1;
}
else
{
    x_to = (ultima_x - x) / 2;
    y_to = (ultima_y - y) / 2;
}

// movimiento heredado del padre
event_inherited();

