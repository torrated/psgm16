/// @description 

if (instance_exists(obj_controles))
{
    x_to = obj_controles.move_x;
    y_to = obj_controles.move_y;
    if (obj_controles.correr)
    {
        velocidad = velocidad_correr;
        corriendo = 1;
    }
    else
    {
        velocidad = velocidad_caminar;
        corriendo = 0;
    }
}


// Inherit the parent event
event_inherited();