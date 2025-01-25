/// @description Parpadeo de los numeros
if (tiempo > 0)
{
    if (color == c_white)
        color = c_red;
    else 
        color = c_white
    if (tiempo > umbral_2)
        alarm[1] = 30;
    else {
        alarm[1] = 15;
    }
}
else {
    color = c_red;
}