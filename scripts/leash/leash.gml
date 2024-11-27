// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function is_tugging_leash(_other, _leash_length){
	return distance_to_object(_other) >= _leash_length;
}