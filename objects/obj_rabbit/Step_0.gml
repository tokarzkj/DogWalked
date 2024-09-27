/// @description Insert description here
// You can write your code in this editor
var _detection_results = detect_dog(obj_dog.id, x, y, detection_radius);
if(_detection_results._within_detection_radius)
{
	var _direction_to_move = 1;
	if _detection_results._direction < 0 _direction_to_move = -1;
	
	var _move_x = _direction_to_move * move_speed;
	var _tilemap = layer_tilemap_get_id("Tiles_1");
	move_and_collide(_move_x, 0, _tilemap, 4, 5, 5, -1, -1);
}