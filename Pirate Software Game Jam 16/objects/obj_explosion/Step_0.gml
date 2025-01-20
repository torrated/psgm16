/// @description 

if (radio_actual <= radio_explosion)
{
	image_xscale = radio_actual/100;
	image_yscale = radio_actual/100;
	radio_actual += 1;
}
else
{
	image_xscale = radio_actual/100;
	image_yscale = radio_actual/100;
	radio_actual += 1;
	image_alpha = 1 - ((radio_actual - radio_explosion)/40); // esto hace que la image se difumine en menos tiempo
}

if (image_alpha == 0)
	instance_destroy();