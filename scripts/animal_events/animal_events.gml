/// function escape(_animal)
/// The animal escapes into a shelter and we add points to the score board accordingly
/// @param {ID.Instance} _animal	Instance Id of the animal that is escaping
function escape(_animal) {
	instance_destroy(_animal);
}