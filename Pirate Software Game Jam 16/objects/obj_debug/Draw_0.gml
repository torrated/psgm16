/// @description 
if (instance_exists(obj_controles) && (obj_controles.debug))
{
   if (instance_exists(obj_enemigo))
   {
       for (var _i = 0; _i < instance_number(obj_enemigo); _i ++)
       {
           var _enemigo = instance_find(obj_enemigo,_i);
           var _color = draw_get_color();
           if (_enemigo.player_detectado)
               draw_set_color(c_red);
           else
               draw_set_color(c_white)
           draw_circle(_enemigo.x, _enemigo.y, _enemigo.distancia_vision, true);
           draw_circle(_enemigo.x, _enemigo.y, _enemigo.distancia_oido, true);
		   
		   if (instance_exists(obj_player))
	           if !(collision_line(_enemigo.x, _enemigo.y, obj_player.x, obj_player.y,obj_colisiones,false,false))
			   {
	               draw_set_color(c_blue);
				   draw_line(_enemigo.x, _enemigo.y, obj_player.x, obj_player.y); //linea de vision
			   }
           	draw_text(_enemigo.x, _enemigo.y-10, "salud:"+string(_enemigo.salud))

           draw_set_color(_color);
       }
   }
}

if (instance_exists(obj_player))
{
	draw_text(obj_player.x,obj_player.y-10,"damage:"+string(obj_player.damage));
	//draw_text(obj_player.x,obj_player.y-20,"correr:"+string(obj_player.velocidad_correr));
}