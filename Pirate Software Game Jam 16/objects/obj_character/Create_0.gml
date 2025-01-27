/// @description 

velocidad_caminar_inicial = 2.5;
velocidad_caminar = velocidad_caminar_inicial;
velocidad_correr = velocidad_caminar * 2;
velocidad = 0;
corriendo = 0;
x_to = 0;
y_to = 0;
image_speed = 0;
puede_moverse = true;
salud_inicial = 5;
salud = salud_inicial;
vidas = 1;
knockback_inicial = 32; //pixels
knockback_actual = 0;
knockback_x = 0;
knockback_y = 0;
golpeado = false;
puntos = 0;
damage = 1;

enum ESTADOS_POSIBLES
{
    NORMAL,
	MUERTO
};
estado = ESTADOS_POSIBLES.NORMAL;