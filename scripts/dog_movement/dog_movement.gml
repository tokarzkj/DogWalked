// main function for moving the dog every step.
function move_dog()
{
	var _prey = prey_detection();
	if (_prey == noone)
	{
		if (move_x == 0)
		{
			image_speed = 0;		
		}
		else
		{
			image_speed = 1;	
		}

		var _tilemap = layer_tilemap_get_id("Tiles_1");
		move_and_collide(move_x, move_y, _tilemap, 4, 3, 3, move_speed, -1);
		x = clamp(x, obj_player.x + 15, room_width + 20);
	}
	else
	{
		move_towards_point(_prey.x, y, 3);
	}
}

// Call in the player movement script to allow the dog to move with the player
function move_dog_with_player()
{
	obj_dog.move_x = move_x;
	obj_dog.move_y = move_y;
}