package objects;

/**
 * A Point (x,y) in Aseprite
 */
@:native('Point')
extern class Point {
	/**
	 * X Coordinate
	 */
	public var x:Int;

	/**
	 * Y Coordinate
	 */
	public var y:Int;

	@:selfCall
	@:overload(function(point:Point):Point {})
	public function new(x:Int = 0, y:Int = 0);
}