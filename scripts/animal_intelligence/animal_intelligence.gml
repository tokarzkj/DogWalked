// Script assets have changed for v2.3.0 see

/// @function detect_dog(_animal_x, _animal_y, _detection_radius)
/// This method takes the animals coordinates and confirms if the dog 
/// is within detection radius of said animal.
/// @param {ID.Instance} _dog			instance of dog to shelter from
/// @param {real} _animal_x				x coordinate of the animal
/// @param {real} _animal_y				y coordinate of the animal
/// @param {real} _detection_radius		The radius the animal will detect the dog in
function detect_dog(_dog, _animal_x, _animal_y, _detection_radius)
{
	var _distance = point_distance(_animal_x, _animal_y, _dog.x, _dog.y);

	return
	{
		_direction: point_direction(_animal_x, _animal_y, _dog.x, _dog.y),
		_within_detection_radius: _distance <= _detection_radius
	}
}

/// @function find_nearest_shelter(_animal, _sight_radius)
/// Returns the nearest shelter within the animals detection radius otherwise returns noone
/// @param {ID.Instance} _animal
function find_nearest_shelter(_animal)
{
	var _potential_shelters = ds_list_create();
	var _number_of_shelters =
		collision_circle_list(_animal.x, _animal.y, _animal.sight_radius,
							  [obj_tree_shelter], false, true, _potential_shelters, true);
						  
	if (_number_of_shelters == 0)
	{
		ds_list_destroy(_potential_shelters);
		return noone;
	}
	
	var _nearest_shelter = ds_list_find_value(_potential_shelters, 0);
	ds_list_destroy(_potential_shelters);
	return _nearest_shelter;
}