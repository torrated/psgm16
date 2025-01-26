/// @description Desactiva la ceguera

for (var _i = 0; _i < instance_number(obj_enemigo); _i++)
{
	var _enemigo = instance_find(obj_enemigo,_i);
	_enemigo.puede_ver = true;
}
instance_destroy();