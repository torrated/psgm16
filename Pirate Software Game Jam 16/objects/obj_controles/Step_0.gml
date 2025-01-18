/// @description Movimiento del player

var _x = keyboard_check(vk_right)-keyboard_check(vk_left);
var _y = keyboard_check(vk_down)-keyboard_check(vk_up);

if (instance_exists(obj_player))
{
    obj_player.x += _x*obj_player.velocidad;
    obj_player.y += _y*obj_player.velocidad;
}