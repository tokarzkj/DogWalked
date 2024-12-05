/// @description Draw relevant GUI information for level 1

for (var _i = 0; _i < instance_number(obj_puppy); _i++)
{
	var _puppy = instance_find(obj_puppy, _i);
	
	var _x = 175 + (35 * (_i + 1));
	var _alpha = 0.5;
	if (_puppy._is_lost == false)
	{
		_alpha = 1;	
	}
	
	draw_sprite_ext(spr_german_shepard, 0, _x, 25, 1.25, 1.25, 0, c_white, _alpha);
}
