/// @description 

distancia_vision = sprite_width * 3;

distancia_oido_inicial = sprite_width * 9;
distancia_oido = distancia_oido_inicial;
player_detectado = false;
velocidad = 0;
ultima_x = x;
ultima_y = y;
alarma_activa = 0;

// Inherit the parent event
event_inherited();

velocidad_inicial = 1.5
velocidad_caminar = velocidad_inicial;
velocidad_correr = velocidad_caminar * 2;
puntos = 1;
puede_ver = true;
