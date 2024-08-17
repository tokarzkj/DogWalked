/// @description Insert description here
// You can write your code in this editor
if (move_x == 0)
{
	image_speed = 0;		
}
else
{
	image_speed = 1;	
}

var _tilemap = layer_tilemap_get_id("Tiles_1");
if (place_meeting(x, y+3, _tilemap))
{
	move_y = 0;
	if (keyboard_check(ord("W"))) move_y = -jump_speed;
}
else if (move_y < 10) move_y += 1;

move_and_collide(move_x, move_y, _tilemap, 4, 3, 3, move_speed, -1);
x = clamp(x, obj_player.x + 15, room_width + 20);