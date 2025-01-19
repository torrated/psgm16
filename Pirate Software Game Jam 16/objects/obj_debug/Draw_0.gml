/// @description 
if (debug)
{
   var _space = 16;
   var _space_i = _space * 2;
   
   if (instance_exists(obj_player))
   {
       var _vel_x = obj_player.x - obj_player.xprevious;
       var _vel_y = obj_player.y - obj_player.yprevious;
       draw_text(32,_space_i,"Vel x:"+string(_vel_x));_space_i += _space;
       draw_text(32,_space_i,"Vel y:"+string(_vel_y));_space_i += _space;
       
       draw_text(32,_space_i,"x_to:"+string(obj_player.x_to));_space_i += _space;
       draw_text(32,_space_i,"y_to:"+string(obj_player.y_to));_space_i += _space;
   }
   
   if (instance_exists(obj_controles))
   {
       draw_text(32,_space_i,"move_x:"+string(obj_controles.move_x));_space_i += _space;
       draw_text(32,_space_i,"move_y:"+string(obj_controles.move_y));_space_i += _space;
   }
   
   if (instance_exists(obj_enemigo))
   {
       for (var _i = 0; _i < instance_number(obj_enemigo); _i ++)
       {
           var _enemigo = instance_find(obj_enemigo,_i);
           var _color = draw_get_color();
           if (obj_enemigo.player_detectado)
               draw_set_color(c_red);
           else
               draw_set_color(c_white)
           draw_circle(_enemigo.x, _enemigo.y, _enemigo.distancia_vision, true);
           draw_circle(_enemigo.x, _enemigo.y, _enemigo.distancia_oido, true);
           if (collision_line(obj_enemigo.x, obj_enemigo.y, obj_player.x, obj_player.y,obj_colisiones,false,false))
               draw_set_color(c_blue);
           
           draw_line(obj_enemigo.x, obj_enemigo.y, obj_player.x, obj_player.y); //linea de vision
   
           draw_set_color(c_orange);
           draw_text(obj_enemigo.ultima_x, obj_enemigo.ultima_y, "x");
           draw_set_color(_color);
           
           draw_text(32,_space_i,"ultima_x:"+string(obj_enemigo.ultima_x));_space_i += _space;
           draw_text(32,_space_i,"ultima_y:"+string(obj_enemigo.ultima_y));_space_i += _space;
           draw_text(32,_space_i,"x_to:"+string(obj_enemigo.x_to));_space_i += _space;
           draw_text(32,_space_i,"y_to:"+string(obj_enemigo.y_to));_space_i += _space;
           draw_text(32,_space_i,"vel enemigo:"+string(obj_enemigo.velocidad));_space_i += _space;
       }
   }
}