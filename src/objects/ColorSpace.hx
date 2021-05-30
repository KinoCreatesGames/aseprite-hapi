package objects;

import Structs.ColorSpaceT;

/**
 * Represents the color space/profile of a sprite, iamge
 * or image spec.
 */
@:native('ColorSpace')
extern class ColorSpace {
	/**
	 * Name of the color space.
	 */
	public var name:String;

	/**
	 * Defines the color space either through a file or 
	 		* a whether it's sRGB for the color space.
	 */
	public function new(colorSpaceT:ColorSpaceT);
}