/// @description 
if(!dano){
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
			else if(contaataque >= maxataque){
				estadoAtual = statusboss2.corre;
			}
		}
		if(ataca && contaataque >= maxataque){
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
			if(vida <=5){
				alarm[6] = room_speed*3;
			}
			alarm[0] = room_speed*5; 
		}
	}
	if((estadoAtual == statusboss2.toca) && (pontos == 1)){
		lados = 0;
		if(!canta){
			canta = 1;
			alarm[3] = room_speed*2;
			if(vida <=5){
				alarm[6] = room_speed*3;
			}
			alarm[0] = room_speed*5; 
		}
	}


	#endregion toca

	#region desce
	if(estadoAtual == statusboss2.desce){
		if(contaataque >= maxataque){
			contaataque = 0;
		}
		if((abs(py - y)) < 400){
			para = 0;
		}
		else if((abs(py-y)) >= 400){
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
			alarm[4] = room_speed/3;
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
			else if(y <= 192){
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

}
#region dano
else{
	if(estadoAtual == statusboss2.cai){
		if(place_meeting(x,y+1,objParede)){
			speed = 0;
			if(mudaestado){
				mudaestado = 0;
			}
				
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
				
			estadoAtual= statusboss2.dano;
		}
		
	}
	if(estadoAtual == statusboss2.dano){
		if(!danomuda){
			vida -=1;
			danomuda = 1;
			if(vida >0){
				alarm[5]=room_speed*3;
			}
			else if(vida<=0){
				alarm[7] = room_speed/2;
			}
		}
	}
	if(estadoAtual == statusboss2.corre){
		
		if(y > 192){
			if(x < -100){
				speed = 0;
			
				if(y>192){
					y = 192;
					direction = 0;
					//image_xscale = 1;
					lados = 0;
					escalas = -1;
					danomuda = 0;
				
				}
							
			}
			if(x > room_width +100 ){
				speed = 0;
			
				if(y>192){
					y = 192;
					direction = 180;
				//	image_xscale = -1;
					lados = 1; // esquerda
					escalas = 1;
					danomuda = 0; 
				}
				
			}
		}
		///////////////////////
		else if(y <= 192){
			if(direction == 0){
				if(x<= 184){
					px = 1;
					speed = 2;
				}
				else if(x>= 184){
					speed = 0;
				
					pontos = -1;
					estadoAtual = statusboss2.toca;
					
					dano = 0;
				}
			}
			
			else if(direction == 180){
				if(x>= 1079 ){
					px = -1;
					speed = 2;
				}
				else if(x<= 1079){
					speed = 0;
					pontos = 1;
					
				
					estadoAtual = statusboss2.toca;
					
					dano = 0;
				}
				
			}
			
		}
		
	}
	
}
#endregion dano