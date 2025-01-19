/// @description 


if (instance_exists(obj_controles))
{
    x_to = obj_controles.move_x* velocidad;
    y_to = obj_controles.move_y* velocidad;

    move_and_collide(x_to,y_to,[ts_pared,obj_colisiones],velocidad*2);
}