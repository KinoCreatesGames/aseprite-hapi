package objects;

import constants.ColorMode.CMode;

@:native('ImageSpec')
extern class ImageSpec {
	/**
	 * Canvas height.
	 */
	public var height:Int;

	/**
	 * Canvas width.
	 */
	public var width:Int;

	// TODO: Figure out how colorMode is set in the code

	/**
	 * The color mode of the image.
	 */
	public var colorMode:CMode;

	/**
	 * The color that represents transparentColor.
	 * Index in the palette that represents transparent color.
	 */
	public var transparentColor:Int;
}