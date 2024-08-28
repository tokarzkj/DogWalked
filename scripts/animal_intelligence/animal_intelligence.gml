// Script assets have changed for v2.3.0 see

/// @function detect_dog(_animal_x, _animal_y, _detection_radius)
/// This method takes the animals coordinates and confirms if the dog 
/// is within detection radius of said animal.
/// @param {real} _animal_x				x coordinate of the animal
/// @param {real} _animal_y				y coordinate of the animal
/// @param {real} _detection_radius		The radius the animal will detect the dog in
function detect_dog(_animal_x, _animal_y, _detection_radius)
{
	var _distance = point_distance(_animal_x, _animal_y, obj_dog.x, obj_dog.y);

	return
	{
		_direction: point_direction(_animal_x, _animal_y, obj_dog.x, obj_dog.y),
		_within_detection_radius: _distance <= _detection_radius
	}
}