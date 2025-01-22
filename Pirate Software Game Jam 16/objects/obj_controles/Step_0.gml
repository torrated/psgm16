/// @description Lectura de botones

move_x = keyboard_check(ord("D"))-keyboard_check(ord("A"));
move_y = keyboard_check(ord("S"))-keyboard_check(ord("W"));
correr = keyboard_check(vk_shift);
atacar = keyboard_check_pressed(vk_space);
toggle_debug = keyboard_check(vk_alt) && keyboard_check(vk_shift) && keyboard_check_pressed(ord("D"));

if (toggle_debug)
	debug = !debug;

if (keyboard_check(vk_escape))
    room_restart();