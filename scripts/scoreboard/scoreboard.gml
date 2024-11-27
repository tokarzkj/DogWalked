// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function set_score(_game_score){
	var _simple_banner_index = asset_get_index("spr_simple_small_banner");
	var _simple_banner_width = sprite_get_width(_simple_banner_index);
	var _simple_banner_height = sprite_get_height(_simple_banner_index);

	draw_set_font(game_font);
	draw_text_color(_simple_banner_width / 2, 
					_simple_banner_height / 2,
					_game_score,
					c_black, c_black, c_black, c_black, 1);
}