/// @description Aumenta la velocidad cuando ve al jugador

alarma_activa = 1;
if (velocidad < velocidad_correr)
{
    velocidad += 0.5
    alarm[0] = 120; // 60 = 1 segundo
}
else {
    alarma_activa = 0;
    velocidad = velocidad_caminar;
}