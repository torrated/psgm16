/// @description Genera un item aleatorio que no este ya en pantalla o activo 

var _items_elegibles = [
	obj_item_gafas,
	obj_item_damage,
	obj_item_reloj,
	obj_item_sordera,
	obj_item_vision,
	obj_item_zapatillas
	];


var _nuevo_item = 0;

while (_nuevo_item == 0)
{
	_nuevo_item = irandom_range(0,array_length(_items_elegibles)-1);
	if (instance_number(_items_elegibles[_nuevo_item]) > 0)
		_nuevo_item = 0;
}

instance_create_layer(x,y,"Items",_items_elegibles[_nuevo_item]);
audio_play_sound(snd_caja,1,false,1,undefined,random_range(0.9,1.1))
instance_destroy();