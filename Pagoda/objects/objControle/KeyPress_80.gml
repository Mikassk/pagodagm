if(room == rmTelaBoss2){
	if(!sprite_exists(screenShot)){
		screenShot = sprite_create_from_surface(application_surface,0,0,1024,768,0,1,512,384);
	}
	room_persistent = 1;
	room_goto(rmTelaPause);
	
}
else{
	
	telas = telaatual.boss2;
	room_goto(rmTelaBoss2);
	
}