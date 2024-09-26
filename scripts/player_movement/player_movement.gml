// Script assets have changed for v2.3.0 see

/// @function move_player()
/// Moves the player object using the implicit player properties.
function move_player(){
	move_x = keyboard_check(ord("D")) - keyboard_check(ord("A"));
	move_x *= move_speed;
	
	move_y = keyboard_check(ord("S")) - keyboard_check(ord("W"));
	move_y *= move_speed;

	var _tilemap = layer_tilemap_get_id("Tiles_1");

	move_dog_with_player(move_x, move_y)

	move_and_collide(move_x, move_y, _tilemap, 4, 3, 3, move_speed, -1);
	x = clamp(x, 0 + 10, room_width + 20);
}