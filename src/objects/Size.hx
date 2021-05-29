package objects;

/**
 * Size of the width and height.
 */
@:native('Size')
extern class Size {
	/**
	 * Width of the size.
	 */
	public var width:Int;

	/**
	 * Height of the size.
	 */
	public var height:Int;

	/**
	 * Creates a new size based on the width, height. 
	 * @param width 
	 * @param height 
	 */
	public function new(width:Int, height:Int):Size;

	/**
	 * Creates a size based on the size.
	 * @param size 
	 * @return Size
	 */
	public function newWidthSize(size:Size):Size;
}