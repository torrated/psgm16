/// @description 

var _len = 0;//sqrt(sqr(x_to) + sqr(y_to));
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
    
    move_and_collide(x_to,y_to,[ts_pared,obj_colisiones],velocidad * 2);
}