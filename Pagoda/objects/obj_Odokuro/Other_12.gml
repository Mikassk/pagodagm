/// @description Movimentos
#region flipa boss
if(estadoAtual == statusboss.corre){
	escala = 5.8;
	y = 390;
	image_alpha = 0.9;
	
}
else{
	escala = 6.2;
	image_alpha = 1;

}

if(!lado){ 
	escalas = 1;
}
else{
	escalas = -1;
}
#endregion flipa boss


if(estadoAtual == statusboss.corre){
	
	if(!spawn1 && !lado){
	
		if(conta <6){
			podespawn = 0;
			event_user(3);
		}
	}
	if( !lado && podespawn){
		conta = 0;
		with(objSpawn){
			if(spawnpedra >= maxspawn){
				spawnpedra =0;
			}
		}
	}

	if(!lado){
		speed = -vx;
	}
	else{ //lado
		speed = vx;
	}
	
	
}
if(estadoAtual == statusboss.idle){
	speed = 0;
}