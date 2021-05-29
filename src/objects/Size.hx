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
	    * Overload creates a new size based on size.
	 * @param width 
	 * @param height 
	 */
	@:overload(function(size:Size):Size {})
	public function new(width:Int = 0, height:Int = 0);
}