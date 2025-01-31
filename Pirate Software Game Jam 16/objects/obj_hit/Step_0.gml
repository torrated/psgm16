/// @description mueve el hit para que vaya siguiendo al character

if (instance_exists(character))
{
	x = character.x;
	y = character.y;
}
else
	instance_destroy();