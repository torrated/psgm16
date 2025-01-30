/// @description detiene el juego unos frames

instancias = {};

i = 0;
for (i = 0; i < instance_count; i++)
{
		instancias[i] = instance_id[i];
}

var _x = obj_niebla.x;
var _y = obj_niebla.y;
instancias_desactivadas = i;
instance_deactivate_all(true);
//instance_activate_object(obj_niebla);
instance_create_layer(_x,_y,"Niebla",obj_niebla);
max_pause = 15;
pause_i = 0;