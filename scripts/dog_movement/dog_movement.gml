/// @function move_dog();
/// main function for moving the dog every step.
function move_dog()
{
	var _prey = prey_detection();
	if (_prey == noone)
	{
		dog_walking_movement();
	}
	else
	{
		dog_chasing_movement(_prey);
	}
}

function dog_walking_movement()
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
		return_to_player(obj_player);
	}
	else
	{
		var _tilemap = layer_tilemap_get_id("Tiles_1");
		move_and_collide(move_x, move_y, _tilemap, 4, 3, 3, move_speed, -1);
		x = clamp(x, obj_player.x + 15, room_width + 20);
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

/// @function move_dog_with_player();
/// Call in the player movement script to allow the dog to move with the player when the dog is
/// walking with the player
function move_dog_with_player(_move_x, _move_y)
{
	if (!obj_dog.is_away_from_player)
	{
		obj_dog.move_x = _move_x;
		obj_dog.move_y = _move_y;
	}
}