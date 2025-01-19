/// @description 


if (instance_exists(obj_controles))
{
    x_to = obj_controles.move_x;
    y_to = obj_controles.move_y;
    
    // aquí se normalizan las componentes x e y
    var _len = sqrt(sqr(x_to) + sqr(y_to));
    x_to = (x_to/_len) * velocidad;
    y_to = (y_to/_len) * velocidad;
  
    move_and_collide(x_to,y_to,[ts_pared,obj_colisiones],velocidad*2);
}