/// @description 

var _len = 0;
var _sqr_x = 0;
var _sqr_y = 0;

if (x_to <> 0)
    _sqr_x = sqr(x_to);
if (y_to <> 0)
    _sqr_y = sqr(y_to);
if (_sqr_x + _sqr_y <> 0)
    _len = sqrt(_sqr_x + _sqr_y);

if (_len <> 0)
{
    x_to = (x_to/_len) * velocidad;
    y_to = (y_to/_len) * velocidad;
    
    move_and_collide(x_to,y_to,obj_colisiones,velocidad * 2);
}

// actualiza los sprites en funcion de la direccion
if ((x_to <> 0) || (y_to <> 0))
{
	if (y_to == 0) { image_index = 0; image_xscale = sign(x_to); }
    if ((x_to <> 0) && (y_to <> 0)) { image_index = 1; image_xscale = sign(x_to); image_yscale = -sign(y_to);}
    if (x_to == 0) { image_index = 2; image_yscale = -sign(y_to); }

}