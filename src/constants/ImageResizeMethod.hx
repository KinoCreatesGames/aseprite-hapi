package constants;

/**
 * Image resize method.
 * for Aseprite Images
 */
enum abstract ImageResizeMethod(String) from String to String {
	var BILINEAR:String = 'bilinear';
	var ROTSPRITE:String = 'rotsprite';
}