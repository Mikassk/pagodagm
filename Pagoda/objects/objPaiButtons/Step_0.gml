/// @description 

#region Controla Se Está Ativo

if(ativo)
{
    if(image_blend == corInativo)
    {
        image_blend = corAtivo;
    }
}
else
{
    if(image_blend == corAtivo)
    {
        image_blend = corInativo;
    }
}

#endregion

#region mouse_enter - mouse_pressed - mouse_leave

if(ativo)
{
    if(verifica_status_jogo(pause, popup, ajuda))
    {
        if(position_meeting(mouse_x, mouse_y, id))
        {
            if(!MOUSE_PRESSED)
            {
				if(image_index == imageIndexMl)
				{
					if(soundEff)
					{
						sound_play(soundMe, 0, SOUND_EFF);
					}
				}
				
                if(image_index != imageIndexMe)
                {
                    image_index = imageIndexMe;
                }
            }
            else
            {
                if(mousePressed)
                {
                    if(image_index != imageIndexMp)
                    {
						if(soundEff)
						{
							sound_play(soundMp, 0, SOUND_EFF);
						}
						
                        image_index = imageIndexMp;
                    }
                }
            }
        }
		else
		{
			if(image_index != imageIndexMl)
			{
				if(soundEff)
				{
					sound_play(soundMl, 0, SOUND_EFF);
				}
    
			    image_index = imageIndexMl;
			}
		}
    }
	else
	{
		if(!position_meeting(mouse_x, mouse_y, id))
		{
			if(image_index != imageIndexMl)
			{
				image_index = imageIndexMl;
			}
		}
	}
}

#endregion mouse_enter - mouse_pressed - mouse_leave

#region Segue view

if(view_enabled)
{
	camera = view_camera;
	
    x = xstart + camera_get_view_x(camera);
    y = ystart + camera_get_view_y(camera);
}
else
{
	x = xstart;
	y = ystart;
}

#endregion Segue view