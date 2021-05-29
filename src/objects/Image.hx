package objects;

@:native('Image')
extern class Image {
	/**
	 * Width of the image.
	 */
	public var width:Int;

	/**
	 * Height of the image
	 */
	public var height:Int;

	/**
	 * Returns the cel to which the image belongs to.
	 */
	public var cel:Cel;

	/**
	 * Creates a copy of the given image.
	 * @return Image
	 */
	public function clone():Image;

	/**
	 * Clears all pixels in the image with the given color
	 * @param color 
	 */
	public function clear(color:Color):Void;

	/**
	 * Saves the image as a sprite with the given filename.
	 * @param fileName 
	 */
	public function saveAs(fileName:String):Void;

	/**
	 * Resizes the image. Pivot point by default is (0, 0)
	 * @param width 
	 * @param height 
	 */
	public function resize(width:Int, height:Int):Void;

	/**
	 * Resizes the image using size. Pivot point by default is (0, 0)
	 * @param size 
	 */
	public function resizeWithSize(size:Size):Void;
}