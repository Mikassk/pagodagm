/// @description

if(tipo == 1)
{
	if(instance_exists(objPersonagem))
	{
		if((objPersonagem.y > y) || objPersonagem.keydown)
		{
			mask_index = nonMask;
		}
		else
		{
			mask_index = mask;
			
			if(place_meeting(x, y, objPersonagem))
			{
				objPersonagem.y = y - 1;
			}
		}
	}
}