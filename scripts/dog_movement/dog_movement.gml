/// @function move_dog(_player);
/// main function for moving the dog every step.
/// @param {ID.Instance} _player		instance of player to shelter from
function move_dog(_player)
{
	var _prey = prey_detection();
	if (_prey == noone)
	{
		dog_walking_movement(_player);
	}
	else
	{
		dog_chasing_movement(_prey);
	}
}

/// @function dog_walking_movement(_player)
/// This method takes the animals coordinates and confirms if the dog 
/// is within detection radius of said animal.
/// @param {ID.Instance} _player		instance of player to shelter from
function dog_walking_movement(_player)
{
	if (move_x == 0)
	{
		image_speed = 0;
		
	}
	else
	{
		image_speed = 1;	
	}

	if (is_away_from_player)
	{
		return_to_player(_player);
	}
	else
	{
		var _tilemap = layer_tilemap_get_id("Tiles_1");
		var _collision_checks = [_tilemap, obj_tree_shelter];
		move_and_collide(move_x, move_y, _collision_checks, 4, 3, 3, move_speed, -1);
		x = clamp(x, _player.x + 15, _player.x + 75);
	}
}

function dog_chasing_movement(_prey)
{
	is_away_from_player = true;
	if (!place_meeting(x + 10, y, _prey))
	{
		move_towards_point(_prey.x, _prey.y, move_speed);
	}
	else
	{
		instance_destroy(_prey);
	}
}

function return_to_player(_player)
{
	if (point_distance(x, y, _player.x, _player.y) < 25)
	{
		speed = 0;
		image_speed = 0;
		is_away_from_player = false;
	}
	else
	{
		move_towards_point(_player.x, _player.y, move_speed);
	}
}

/// @function move_dog_with_player(_dog, _move_x, _move_y);
/// Call in the player movement script to allow the dog to move with the player when the dog is
/// walking with the player
/// @param{Instance.Id} _dog	instance of dog to move with player
/// @param{real} _move_x		distance to move on x-axis
/// @param{real} _move_y		distance to move on y-axis
function move_dog_with_player(_dog, _move_x, _move_y)
{
	if (!_dog.is_away_from_player)
	{
		_dog.move_x = _move_x;
		_dog.move_y = _move_y;
	}
}