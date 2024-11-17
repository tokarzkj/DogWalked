// Script assets have changed for v2.3.0 see

/// @function move_player()
/// Moves the player object using the implicit player properties.
function move_player(_dog) {
	if (!_dog.is_away_from_player)
	{
		move_x = keyboard_check(ord("D")) - keyboard_check(ord("A"));
		move_x *= move_speed;
	
		move_y = keyboard_check(ord("S")) - keyboard_check(ord("W"));
		move_y *= move_speed;
		
		move_dog_with_player(_dog, move_x, move_y)
	}

	var _tilemap = layer_tilemap_get_id("Tiles_1");
	var _collision_checks = [_tilemap, obj_tree_shelter];
	
	move_and_collide(move_x, move_y, _collision_checks, 4, 3, 3, move_speed, -1);
	x = clamp(x, 0 + 10, room_width + 20);
}

function move_player_with_dog(_player, _dog, _x, _y)
{
	if (_dog.is_away_from_player)
	{
		with (_player)
		{
			_player.is_being_dragged = true;
			move_towards_point(_x, _y, _player.move_speed);
		}
	}
}

function stop_dragging_player(_player)
{
	with (_player)
	{
		if (_player.is_being_dragged = true)
		{
			_player.speed = 0;
		}
	}
}