package objects;

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
	public function new(x:Int = 0, y:Int = 0);

	@:selfCall
	public function newWithPoint(point:Point):Point;
}