/// @description detiene el juego unos frames

instancias = {};

i = 0;
x_niebla = 0;
y_niebla = 0;
if (instance_exists(obj_player))
{
	x_niebla = obj_player.x;
	y_niebla = obj_player.y;
}
for (i = 0; i < instance_count; i++)
{
		instancias[i] = instance_id[i];
}


instancias_desactivadas = i;
instance_deactivate_all(true);
instance_create_layer(x_niebla,y_niebla,"Niebla",obj_niebla);
max_pause = 15;
pause_i = 0;