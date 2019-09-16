/// @description 

if(mousePressed)
{
    mousePressed = 0;
    
    if(ativo && !fixo)
    {
        objBaseArrastavel = instance_position(mouse_x, mouse_y, objPaiBaseArrastavel);
        
        if(instance_exists(objBaseArrastavel))
        {
            if(place_meeting(x, y, objBaseArrastavel) && position_meeting(mouse_x, mouse_y, objBaseArrastavel))
            {
                if(!baseExata)
                {
                    if(!destroyNaBase)
                    {
						if(instance_exists(objBaseArrastavel.item))
						{
							if(objBaseArrastavel.item.fixo)
							{
								volta = 1;
								exit;
							}
						}
						
                        depth = _depth;
                        
                        base = objBaseArrastavel.id;
                        vai = 1;
                        
                        if(instance_exists(base.item))
                        {
                            with(base.item)
                            {
                                if(destroy)
                                {
                                    instance_destroy();
                                }
                                else
                                {
                                    base = noone;
									
									with(objPaiArrastavel)
									{
										if(id != other.id && !instance_exists(base) && index == other.index)
										{
											instance_destroy();
										}
									}
									
                                    volta = 1;
                                }
                            }
                        }
                        
                        base.item = id;
                        
                        if(objArrastavel != noone)
                        {
							obj = instance_position(xstart, ystart, objPaiArrastavel);
							
							if(!instance_exists(obj))
							{
	                            objNovo = instance_create_layer(xstart, ystart, layerName, objArrastavel);
	                            objNovo.index = index;
								objNovo.inverteu = inverteu;
								objNovo.layerName = layerName;
							}
                        }
						
                        ativo = 0;
                    }
                    else //destroyNaBase
                    {
                        if(index == objBaseArrastavel.index)
                        {
                            if(objBaseArrastavel.qtdeItem > 0)
                            {
                                objBaseArrastavel.qtdeItem -= 1;
                            }
                            
                            if(objArrastavel != noone)
                            {
								obj = instance_position(xstart, ystart, objPaiArrastavel);
							
								if(!instance_exists(obj))
								{
	                                objNovo = instance_create_layer(xstart, ystart, layerName, objArrastavel);
									objNovo.inverteu = inverteu;
									objNovo.layerName = layerName;
								}
                            }
                            
                            instance_create_feedback(-1, "", 1);
                            
                            instance_destroy();
                        }
                        else
                        {
                            instance_create_feedback(-1, "", 0);
							
							with(objPaiArrastavel)
							{
								if(id != other.id && !instance_exists(base) && index == other.index)
								{
									instance_destroy();
								}
							}
							
                            volta = 1;
                        }
                    }
                }
                else //baseExata
                {
                    if(index == objBaseArrastavel.index)
                    {
                        depth = _depth;
                        
                        base = objBaseArrastavel.id;
						base.item = id;
                        vai = 1;
						
                        ativo = 0;
                        
                        instance_create_feedback(-1, "", 1);
                    }
                    else
                    {
                        instance_create_feedback(-1, "", 0);
                        
                        base = noone;
						
						with(objPaiArrastavel)
						{
							if(id != other.id && !instance_exists(base) && index == other.index)
							{
								instance_destroy();
							}
						}
						
                        volta = 1;
                    }
                }
            }
            else //!place_meeting && !position_meeting objBaseArrastavel
            {
                base = noone;
				
				with(objPaiArrastavel)
				{
					if(id != other.id && !instance_exists(base) && index == other.index)
					{
						instance_destroy();
					}
				}
				
                volta = 1;
            }
        }
        else //!instance_exists objBaseArrastavel
        {
            base = noone;
			
			with(objPaiArrastavel)
			{
				if(id != other.id && !instance_exists(base) && index == other.index)
				{
					instance_destroy();
				}
			}
			
            volta = 1;
        }
    }
}