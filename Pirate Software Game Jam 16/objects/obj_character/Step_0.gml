/// @description 

if ((estado <> ESTADOS_POSIBLES.MUERTO) && (puede_moverse))
{
	var _len = 0;
	var _sqr_x = 0;
	var _sqr_y = 0;

	if (x_to <> 0)
	    _sqr_x = sqr(x_to);
	if (y_to <> 0)
	    _sqr_y = sqr(y_to);
	if (_sqr_x + _sqr_y <> 0)
	    _len = sqrt(_sqr_x + _sqr_y);

	if (_len >= 1)
	{
	    x_to = (x_to/_len) * velocidad;
	    y_to = (y_to/_len) * velocidad;
    
	    move_and_collide(x_to,y_to,[obj_colisiones,obj_enemigo],velocidad * 2);
	}

	// actualiza los sprites en funcion de la direccion
	if (x_to <> 0)
		image_xscale = sign(x_to);
}