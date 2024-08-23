// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function prey_detection(){
	if (point_distance(obj_dog.x, obj_dog.y, obj_rabbit.x, obj_rabbit.y) < obj_dog.prey_drive)
	{
		return obj_rabbit;	
	}
	
	return noone;
}