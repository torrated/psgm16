/// @description Lectura de botones

move_x = keyboard_check(ord("D"))-keyboard_check(ord("A"));
move_y = keyboard_check(ord("S"))-keyboard_check(ord("W"));
correr = keyboard_check(vk_shift);
atacar = keyboard_check_pressed(vk_space);
toggle_debug = keyboard_check(vk_alt) && keyboard_check(vk_shift) && keyboard_check_pressed(ord("D"));
toggle_niebla= keyboard_check(vk_alt) && keyboard_check(vk_shift) && keyboard_check_pressed(ord("N"));

if (1==2) {
///////// DEBUG
if (toggle_debug)
	debug = !debug;
if (toggle_niebla)
	niebla = !niebla;	

if keyboard_check(vk_alt) && keyboard_check(vk_shift) && keyboard_check_pressed(vk_right)
	room_goto_next();
	
if keyboard_check(vk_alt) && keyboard_check(vk_shift) && keyboard_check_pressed(ord("T"))
	if (instance_exists(obj_timer))
		obj_timer.tiempo += 5;

if keyboard_check(vk_alt) && keyboard_check(vk_shift) && keyboard_check_pressed(ord("0"))
	if (instance_exists(obj_timer))
		obj_timer.tiempo -= 5;
}
/////////

if (keyboard_check(vk_escape))
    room_restart();