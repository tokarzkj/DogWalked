/// @description Implement basic walking and collision detection.
// You can write your code in this editor
move_x = keyboard_check(ord("D")) - keyboard_check(ord("A"));
move_x *= move_speed;

var _tilemap = layer_tilemap_get_id("Tiles_1");
if (place_meeting(x, y+3, _tilemap))
{
	move_y = 0;
	if (keyboard_check(ord("W"))) move_y = -jump_speed;
}
else if (move_y < 10) move_y += 1;

obj_dog.move_x = move_x;
obj_dog.move_y = move_y;

move_and_collide(move_x, move_y, _tilemap, 4, 3, 3, move_speed, -1);
x = clamp(x, 0 + 10, room_width + 20);