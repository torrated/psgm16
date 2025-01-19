/// @description 
//
alarma_activa = 1;
if (velocidad < velocidad_correr)
{
    velocidad += 0.5
    alarm[0] = 60;
}
else {
    alarma_activa = 0;
    velocidad = velocidad_caminar;
}