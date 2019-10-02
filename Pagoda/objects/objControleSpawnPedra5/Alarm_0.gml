/// @description 
spawnpedra+=1;

instance_create_layer(x,y,"HUD",objPedra);

if(spawnpedra <=maxspawn){
	spawn = 1;
}
if(spawnpedra >= maxspawn){
	podespawn = 1;
}