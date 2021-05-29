package objects;

extern class Cel {
	/**
	 * returns the Sprite the cel belongs to.
	 */
	public var sprite:Sprite;

	/**
	 * Layer where the cel is located
	 */
	public var layer:Layer;

	/**
	 * Sets or gets the image with the pixels of this cel.
	 */
	public var image:Image;

	/**
	 * Returns the frame this cel belongs to.
	 */
	public var frame:Frame;

	/**
	 * Frame number. Initial frame number starts at 1 not 0
	 */
	public var frameNumber:Int;

	/**
	 * Returns the rectangle with the cel bounds.
	 * Position & Size
	 */
	public var bounds:Rectangle;

	/**
	 * Position of the cel
	 */
	public var position:Point;

	/**
	 * 0-255 for Opacity
	 */
	public var opacity:Int;

	/**
	 * Color of the cel
	 */
	public var color:Color;

	/**
	 * User entered data (text String)
	 */
	public var data:String;
}