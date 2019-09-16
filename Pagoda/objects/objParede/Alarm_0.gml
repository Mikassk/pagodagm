/// @description Troca sprite/mask

if(tipo == 2)
{
	sprite_index = sprPuf;
	mask_index = mask;
}
else if(tipo == 3)
{
	mask = sprMaskEsteira;
	nonMask = sprNonMaskEsteira;

	mask_index = mask;

	if(!lado)
	{
		image_xscale = 1;
	}
	else
	{
		image_xscale = -1;
	}
}