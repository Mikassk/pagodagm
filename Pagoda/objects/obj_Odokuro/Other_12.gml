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

#region corre // spawn pedra
if(estadoAtual == statusboss.corre){
#region spawner pedra	
	if(!spawn1 && !lado){
	
		if(conta <6){
			
			event_user(3);
		}
	}
	if(lado && podespawn){
		conta = 0;
		spawn1 = 0;
		with(objSpawn){
			if(spawnpedra >= maxspawn){
				spawnpedra = 0;
			}
		}
		podespawn = 0;
	}
#endregion spawn pedra
	if(!lado){
		speed = -vx;
	}
	else{ //lado
		speed = vx;
	}
	
	
}
#endregion corre

#region idle
if(estadoAtual == statusboss.idle){
	speed = 0;
}
#endregion idle