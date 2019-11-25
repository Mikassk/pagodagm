/// @description 

#region corre
if(estadoAtual == statusboss2.corre){
	speed = 1.5;
	#region esquerda
	if(!lados){
		direction = 180;
		if(x > px){
			speed = 1.5
		}
		else if(x <= px && x > 191){
			
			//speed = 0;
			estadoAtual = statusboss2.ataque;
		}
		else if(x <= px && x < 191 ){
			
			estadoAtual = statusboss2.toca;
		}
		
	}
	#endregion esquerda
	#region direita
	else if(lados){
		direction = 0;
		if(x < px){
			speed = 1.5
		}
		else if(x >= px && x < 1070){
			
			//speed = 0;
			estadoAtual = statusboss2.ataque;
		}
		else if(x >= px && x > 1072 ){
			
			estadoAtual = statusboss2.toca;
		}
	}
	#endregion direita
	
}
#endregion corre

#region ataque
if(estadoAtual == statusboss2.ataque){
	speed = 0;
	if(!ataca){
		ataca = 1;
		if(contaataque < 3){
			alarm[2] = room_speed*3;
		}
		else if(contaataque >=3){
			estadoAtual = statusboss2.corre;
		}
	}
	if(ataca && contaataque >=3){
		py = y;
		//pontos = -1;
		//estadoAtual = statusboss2.corre;
		estadoAtual = statusboss2.desce;
		
	}
	
	
}
#endregion ataque

#region toca

	
if((estadoAtual == statusboss2.toca) && (pontos ==-1)){
	
	lados = 1;
	if(!canta){
		canta = 1;
		alarm[3] = room_speed*2;
		alarm[0] = room_speed*4; 
	}
}
if((estadoAtual == statusboss2.toca) && (pontos == 1)){
	lados = -1;
	if(!canta){
		canta = 1;
		alarm[3] = room_speed*2;
		
		alarm[0] = room_speed*5; 
	}
}


#endregion toca

#region desce
if(estadoAtual == statusboss2.desce){
	if(contaataque >= 3){
		contaataque = 0;
	}
	if((abs(py - y)) < 350){
		para = 0;
	}
	else if((abs(py-y)) >= 350){
		para = 1;
		if(para){
			estadoAtual = statusboss2.balanca;
		}
		
	}
	
}
#endregion desce

#region balanca
if(estadoAtual == statusboss2.balanca){
	if(!balanca){
		balanca = 1;
		alarm[0] = room_speed*2;
	}
	
}
#endregion balanca

#region sobe
if(estadoAtual == statusboss2.sobe){
	if(para){
		para = 0;
	}
	if(ataca){
		ataca = 0;
	}
	if(balanca){
		balanca = 0;
	}
	if(canta){
		canta = 0;
	}
		if(abs(py - y) <350 ){
			speed = 1.5;
		}
		else if(abs(py - y) >= 350){
			speed = 0;
			if(lados){
				pontos = 1;
			}
			if(!lados){
				pontos = -1;
			}
			estadoAtual = statusboss2.corre;
			
		}
	
	
}

#endregion sobe

