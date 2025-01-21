/// @description Lectura de botones

move_x = keyboard_check(ord("D"))-keyboard_check(ord("A"));
move_y = keyboard_check(ord("S"))-keyboard_check(ord("W"));
correr = keyboard_check(vk_shift);
atacar = keyboard_check_pressed(vk_space);

if (keyboard_check(vk_escape))
    room_restart();