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
           	draw_text(_enemigo.x, _enemigo.y-10, "knockback_x:"+string(_enemigo.knockback_x))
			draw_text(_enemigo.x, _enemigo.y-20, "knockback_y:"+string(_enemigo.knockback_y))
			draw_text(_enemigo.x, _enemigo.y-30, "knockback_actual:"+string(_enemigo.knockback_actual))

           draw_set_color(_color);
       }
   }
}