/// @description detiene el juego unos frames

instancias = {};

i = 0;
for (i = 0; i < instance_count; i++)
{
		instancias[i] = instance_id[i];
	
}

instancias_desactivadas = i;
instance_deactivate_all(true);
instance_activate_object(obj_niebla);
max_pause = 15;
pause_i = 0;