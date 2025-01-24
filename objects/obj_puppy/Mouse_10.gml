/// @description Insert description here
// You can write your code in this editor
var _player = instance_find(obj_player, 0);
if (is_puppy_within_range(self, _player))
{
	window_set_cursor(cr_handpoint);
}