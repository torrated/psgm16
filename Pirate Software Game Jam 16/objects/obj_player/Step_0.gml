/// @description 

if ((instance_exists(obj_controles)) && puede_moverse)
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

if !(puede_moverse)
{
	x_to = 0;
	y_to = 0;
}


// Inherit the parent event
event_inherited();