/// @description Reage aos controles

move = keyleft + keyright;
hsp = move * movespeed;

if(vsp < 10)
{
	vsp += grav;
}

//Pulos
if(place_meeting(x, y + 1, objParede))
{
    jumps = jumpsmax;
}
else
{
    if(jumps == jumpsmax)
	{
		jumps -= 1;
	}
}

if((keyjump) && (jumps > 0))
{
    jumps -= 1;
    vsp = -jumpspeed;
}

if(vsp < 0)
{
	vsp = max(vsp, -jumpspeed / 2);
}
