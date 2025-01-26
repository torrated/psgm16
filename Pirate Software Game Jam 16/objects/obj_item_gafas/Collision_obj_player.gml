/// @description

if (instance_exists(obj_enemigo) && !item_activado)
{
	for (var _i = 0; _i < instance_number(obj_enemigo); _i++)
	{
		var _enemigo = instance_find(obj_enemigo,_i);
		_enemigo.puede_ver = false;
	}
	item_activado = true;
	pinta_item = false;
	pinta_texto = true;
	alarm[0] = 60; //60 = 1 segundo
	alarm[1] = 300;
}