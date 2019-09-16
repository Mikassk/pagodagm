/// @description 

if(volta)
{
    if(abs(x - xstart) > 1)
    {
        x = mean(x, x, x, x, x, x, x, x, x, x, xstart);
    }
	else
	{
		x = xstart;
	}
	
	if(abs(y - ystart) > 1)
	{
		y = mean(y, y, y, y, y, y, y, y, y, y, ystart);
	}
	else
	{
		y = ystart;
	}
	
    if(!(abs(x - xstart))
	&& !(abs(y - ystart)))
    {
		x = xstart;
		y = ystart;
		
        volta = 0;
        
        depth = _depth;
        
        ativo = 1;
    }
}
else
{
	if(vai)
	{
		if(instance_exists(base))
		{
			if(abs(x - base.x) > 1)
		    {
		        x = mean(x, x, x, x, x, x, x, x, x, x, base.x);
		    }
			else
			{
				x = base.x;
			}
	
			if(abs(y - base.y) > 1)
			{
				y = mean(y, y, y, y, y, y, y, y, y, y, base.y);
			}
			else
			{
				y = base.y;
			}
		
			if(!(abs(x - base.x) > 1)
			&& !(abs(y - base.y) > 1))
			{
				x = base.x;
				y = base.y;
			
			    vai = 0;
			
			    depth = _depth;
			
			    if(arrastaNaBase)
		        {
					ativo = 1;
				}
			}
		}
		else
		{
			vai = 0;
			volta = 1;
		}
	}
}