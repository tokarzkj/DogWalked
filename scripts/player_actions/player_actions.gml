// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function throw_treat(_player)
{
	if (_player.treat_count > 0)
	{
		var _treat = instance_create_layer(_player.x + 15, _player.y - 15, "Instances", obj_dog_treat,
		{
			landing_x: mouse_x,
			landing_y: mouse_y,
		});
		
		_player.treat_count--;
	}
}