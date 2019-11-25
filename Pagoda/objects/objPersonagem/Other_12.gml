/// @description Colisão

var bloco = instance_position(x, y + 5, objParede);

var raio = 5;

if(instance_exists(bloco))
{
	if((x >= (bloco.x - raio)) && (x <= (bloco.x + raio)))
	{
		if(bloco.tipo == 2)
		{
			if(!bloco.puf)
			{
				bloco.puf = 1;
				
				if(bloco.tempoPuf > 0)
				{
					bloco.alarm[1] = bloco.tempoPuf * room_speed;
				}
				else
				{
					bloco.alarm[1] = 1;
				}
			}
		}
	}
		
	if(bloco.tipo == 3)
	{
		if(!bloco.lado)
		{
			hsp += bloco._speed;
		}
		else
		{
			if(bloco.lado)
			{
				hsp -= bloco._speed;
			}
		}
	}
}
else
{
	raio = 10;
	
	bloco = instance_position(x - raio, y + 5, objParede);

	if(instance_exists(bloco))
	{
		if(bloco.tipo == 3)
		{
			if(!bloco.lado)
			{
				hsp += bloco._speed;
			}
			else
			{
				if(bloco.lado)
				{
					hsp -= bloco._speed;
				}
			}
		}
	}
	else
	{
		bloco = instance_position(x + raio, y + 5, objParede);

		if(instance_exists(bloco))
		{
			if(bloco.tipo == 3)
			{
				if(!bloco.lado)
				{
					hsp += bloco._speed;
				}
				else
				{
					if(bloco.lado)
					{
						hsp -= bloco._speed;
					}
				}
			}
		}
	}
}


//Colisões horizontais
if(place_meeting(x + hsp, y, objParede))
{
    while(!place_meeting(x + sign(hsp), y, objParede))
    {
        x += sign(hsp);
    }
	
    hsp = 0;
}

x += hsp;

//Colisões verticais
if(place_meeting(x, y + vsp, objParede))
{
    while(!place_meeting(x, y + sign(vsp), objParede))
    {
        y += sign(vsp);
    }
	
    vsp = 0;
}

y += vsp;

if(place_meeting(x,y-1,objAtaqueTeia)){
	soltar = 1;
}