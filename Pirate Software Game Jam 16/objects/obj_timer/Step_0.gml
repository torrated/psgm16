/// @description 
if ((tiempo < umbral_1) && !(parpadeo_iniciado))
{
    parpadeo_iniciado = true;
    alarm[1] = 1;
}
if ((tiempo >= umbral_1) && parpadeo_iniciado)
    parpadeo_iniciado = false;