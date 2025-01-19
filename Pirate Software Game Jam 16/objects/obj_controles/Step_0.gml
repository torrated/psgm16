/// @description Movimiento del player

move_x = keyboard_check(ord("D"))-keyboard_check(ord("A"));
move_y = keyboard_check(ord("S"))-keyboard_check(ord("W"));
correr = keyboard_check(vk_shift);