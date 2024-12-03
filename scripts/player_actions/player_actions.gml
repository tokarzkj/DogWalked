// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function throw_treat(_player, _dog)
{
	var _existing_treat = instance_find(obj_dog_treat, 0);
	if (_dog.is_away_from_player && _player.treat_count > 0 && _existing_treat == noone)
	{
		var _treat = instance_create_layer(_player.x, _player.y - 15, "Instances", obj_dog_treat);
		
		_player.treat_count--;
	}
}