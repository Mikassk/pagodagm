/// @description 

if(ativo && !fixo)
{
    if(verifica_status_jogo(pause, popup, ajuda))
    {
        if(!MOUSE_PRESSED)
        {
	        mouseX = mouse_x - x;
	        mouseY = mouse_y - y;
			
	        depth = _depth - abs(_depth / 2);
            
	        volta = 0;
            
	        if(instance_exists(base))
	        {
	            base.item = noone;
                
	            bose = noone;
	        }
            
			if(alteraIndexBases)
			{
				if(!inverteIndexBases)
				{
					with(objPaiBaseArrastavel)
					{
						index = other.index;
					
						alarm[0] = 1;
					}
				}
				else
				{
					if(!inverteu)
					{
						with(objPaiArrastavel)
						{
							if(inverteu)
							{
								inverteu = 0;
							}
						}
						
						inverteu = 1;
						
						var algumNaBase = 0;
						
						with(objPaiBaseArrastavel)
						{
							if(instance_exists(item))
							{
								algumNaBase = 1;
							}
						}
						
						with(objPaiBaseArrastavel)
						{
							if(!algumNaBase)
							{
								index = !index;
					
								alarm[0] = 1;
							}
						}
					}
				}
			}
			
	        mousePressed = 1;
        }
    }
}