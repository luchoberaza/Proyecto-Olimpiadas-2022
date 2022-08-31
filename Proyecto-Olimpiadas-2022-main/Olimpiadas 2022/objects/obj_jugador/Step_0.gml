

//Movimiento
if (keyboard_check(vk_left)) 
{ 
	if(velocidad >= -5) 
	{
		velocidad--;
	}
	image_xscale = -1;
}
else if (keyboard_check(vk_right)) 
{ 
	if(velocidad <= 5) 
	{
		velocidad++;
	}
	image_xscale = 1;
}
else 
{
	velocidad -= sign(velocidad);	
}

while (place_meeting(x + velocidad, y, obj_colision))
{
	velocidad -= sign(velocidad);
}

speed = round(velocidad);


	

