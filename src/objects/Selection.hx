package objects;

/**
 * Selection rectangle in Aseprite application.
 */
@:native('Selection')
extern class Selection {
	/**
	 * Creates a new selection.
	 * @param rectangle 
	 */
	@:selfCall
	public function new(?rectangle:Rectangle);

	/**
	 * Bounds of the selection rectangle.
	 */
	public var bounds:Rectangle;

	/**
	 * A Point.
	 * Gets or sets the origin of the selection.
	 * Can be used to move the selection edges.
	 */
	public var origin:Point;

	/**
	 * Returns true if the selection is empty;
	 * if no pixels are selected.
	 */
	public var isEmpty:Bool;

	/**
	 * Deselects the current selection.
	 */
	public function deselect():Void;

	/**
	 * Selects the given rectangle.
	 * @param rectangle 
	 */
	public function select(rectangle:Rectangle):Void;

	/**
	 * Selects the whole canvas. Only valid for a sprite selection.
	 */
	public function selectAll():Void;

	/**
	 * Checks if the point or the 
	 * or the x, y values are within the selection.
	 * @param x 
	 * @param y 
	 * @return Bool
	 */
	public overload function contains(x:Int, y:Int):Bool;

	/**
	 * Checks if the point 
	 * are within the selection.
	 * @param point  
	 * @return Bool
	 */
	public overload function contains(point:Point):Bool;
}