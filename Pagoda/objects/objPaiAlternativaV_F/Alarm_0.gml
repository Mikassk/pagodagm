/// @description 

if(tipo == "V")
{
	sprite_index = asset_get_index("sprBtnBulletV");
	
	if(!instance_exists(bulletF))
	{
		bulletF = instance_create_depth(x + (sprite_width / 2) + 32, y, depth, objPaiAlternativaV_F);
		bulletF.index = index;
		bulletF.tipo = "F";
		bulletF.correta = !correta;
		bulletF.bulletV = id;
	}
}
else
{
	if(tipo == "F")
	{
		sprite_index = asset_get_index("sprBtnBulletF");
		
		if(!instance_exists(bulletV))
		{
			bulletV = instance_create_depth(x + (sprite_width / 2) + 32, y, depth, objPaiAlternativaV_F);
			bulletV.index = index;
			bulletV.tipo = "V";
			bulletV.correta = !correta;
			bulletV.bulletF = id;
		}
	}
	else
	{
		instance_destroy();
	}
}