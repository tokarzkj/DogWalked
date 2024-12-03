// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function update_score(_points)
{
	var _game = instance_find(obj_game, 0);
	var _new_score = _game.game_score + _points;
	
	if (_new_score > 0)
	{
		_game.game_score = _new_score	
	}
	else
	{
		_game.game_score = 0;
	}	
}

function set_score(_game_score)
{
	var _simple_banner_index = asset_get_index("spr_simple_small_banner");
	var _simple_banner_width = sprite_get_width(_simple_banner_index);
	var _simple_banner_height = sprite_get_height(_simple_banner_index);

	draw_set_font(game_font);
	draw_text_color(_simple_banner_width / 2, 
					_simple_banner_height / 2,
					_game_score,
					c_black, c_black, c_black, c_black, 1);
}

function score_level()
{
	var _points = 0;
	
	var _remaining_rabbits = instance_number(obj_rabbit);
	_points += 5 * _remaining_rabbits;
	
	set_score(_points);
}