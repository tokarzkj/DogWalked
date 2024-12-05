// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function spawn_lost_dogs(_number_of_puppies, _illegal_tiles)
{
	if (_number_of_puppies <= 0)
	{
		throw ("You  must generate 1 or more puppies to find!");	
	}
	
	var _spawned_puppies = 0;
	while (_spawned_puppies < _number_of_puppies)
	{
		var _x = irandom(1920);
		var _y = irandom(1080);
		var _spawned_pup = instance_create_layer(_x, _y, "Instances", obj_puppy);
		
		_spawned_puppies++;
		
		with(_spawned_pup)
		{
			if (place_meeting(_x, _y, _illegal_tiles))
			{
				_spawned_pup.x += 25;
				_spawned_pup.y += 25
			}
			
			var _path = choose(pth_puppy_1, pth_puppy_2, pth_puppy_3);
			path_start(_path, 1, path_action_reverse, false);
		}
	}
}