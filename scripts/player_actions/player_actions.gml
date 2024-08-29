// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function throw_treat(_player, _dog)
{
	if (_player.treat_count > 0)
	{
		with(_dog)
		{
			var _treat = instance_create_layer(_player.x + 5, _player.y - 5, "Instances", obj_dog_treat,
			{
				landing_x: _dog.x,
				landing_y: _player.y,
			});
		}
		
		_player.treat_count--;
	}
}