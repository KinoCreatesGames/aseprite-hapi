package objects;

@:native('ImageSpec')
extern class ImageSpec {
	public var height:Int;
	public var width:Int;

	/**
	 * The color mode of the image.
	 */
	public var colorMode:Int;

	/**
	 * The color that represents transparentColor.
	 * Index in the palette that represents transparent color.
	 */
	public var transparentColor:Int;
}