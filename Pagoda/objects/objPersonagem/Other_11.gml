/// @description Reage aos controles

move = keyleft + keyright;
hsp = move * movespeed;

if(vsp < 20)//(vsp < 10)
{
	vsp += grav;
}

//Pulos
if(place_meeting(x, y + 1, objParede))
{
    jumps = jumpsmax;
	pulo2 = 0;
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
if(vsp < vspmax){
	vspmax = vsp;
}
if(soltar){
	
	if(contsolta < 10){
		
		if(keyleft_ ){
			if(teclaanterior != keyleft){
				teclaanterior = keyleft;
				contsolta +=1;
				alarm[0]=room_speed/2;
			}
			else{
				contsolta = 0;
				
			}
			
		}
		else if(keyright_){
			if( teclaanterior != keyright){
				teclaanterior = keyright;
				contsolta +=1;
				alarm[0]=room_speed/2;
			}
			else{
				contsolta = 0;
			}
		}
	}
	if(contsolta >= 10){
		soltar = 0;
		spawna = 0;
		
		with(objJorogumo){
			mudaestado = 1;
		}
		
		
	}
}
	
