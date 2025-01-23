/// @description Knockback

if ((knockback_x == 0) && (knockback_y == 0) && (instance_exists(obj_player)))
{
	knockback_x = obj_player.x;
	knockback_y = obj_player.y;
	puede_moverse = false;
}
var _len = sqrt(sqr(x-knockback_x) + sqr(y-knockback_y));
x_to = ((x-knockback_x)/_len) ;
y_to = ((y-knockback_y)/_len) ;

move_and_collide(x_to,y_to,[obj_colisiones,obj_enemigo],1);
	
knockback_actual += 1

if (knockback_actual < knockback_inicial)
	alarm[2] = 1;
else
{
	golpeado = false;
	knockback_x = 0;
	knockback_y = 0;
	knockback_actual = 0;
	puede_moverse = true;
}