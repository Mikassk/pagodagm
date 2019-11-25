/// @description segue
var dirx = 0;
var diry = 0;
var direcao = 0;

dirx = instance_nearest(x,y,objPersonagem).x;
diry = instance_nearest(x,y,objPersonagem).y+50;
direcao =  point_direction(x,y,dirx,diry); 

if(distance_to_object(objPersonagem) > 100 && dist <= 300){

	direction = direcao;
}

