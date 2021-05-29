package objects;

/**
 * Rectangle class.
 */
@:native('Rectangle')
extern class Rectangle {
	public var x:Int;
	public var y:Int;
	public var width:Int;
	public var height:Int;

	/**
	 * Returns true if the rectanlge is empty width/height are 0
	 */
	public var isEmpty:Bool;

	@:selfCall
	public function new(x:Int = 0, y:Int = 0, width:Int = 0, height:Int = 0);

	/**
	 * Returns true if the other rectangle is within this rectangle.
	 * @return Bool
	 */
	public function contains(rectangle:Rectangle):Bool;

	/**
	 * Returns true if the rectangle intersects the other rectangle.
	 * @param rectangle 
	 * @return Bool
	 */
	public function intersects(rectangle:Rectangle):Bool;

	/**
	 * Returns the new rectangle which is the intersection of rectangle 
	 * and the other rectangle. Returns empty rectangle if they 
	 * don't intersects.
	 * @param rectangle 
	 * @return Rectangle
	 */
	public function intersect(rectangle:Rectangle):Rectangle;

	/**
	 * Returns the new rectangle which will be a rectangle big enough to 
	 * contain both given rectangles.
	 * @param rectangle 
	 * @return Rectangle
	 */
	public function union(rectangle:Rectangle):Rectangle;
}