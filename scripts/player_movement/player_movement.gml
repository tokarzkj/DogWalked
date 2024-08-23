// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function move_player(){
	move_x = keyboard_check(ord("D")) - keyboard_check(ord("A"));
	move_x *= move_speed;
	var _x_jump = 0;
	var _tilemap = layer_tilemap_get_id("Tiles_1");
	if (place_meeting(x, y+3, _tilemap))
	{
		move_y = 0;
		if (keyboard_check(ord("W"))) move_y = -jump_speed;
	}
	else if (move_y < 10)
	{ 
		move_y += 1;
		_x_jump = 1 * move_x;
	}

	move_dog_with_player()

	move_and_collide(move_x + _x_jump, move_y, _tilemap, 4, 3, 3, move_speed + _x_jump, -1);
	x = clamp(x, 0 + 10, room_width + 20);
}