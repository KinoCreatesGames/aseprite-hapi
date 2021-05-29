package objects;

/**
 * A slice created within Aseprite.
 * 
 */
@:native('Slice')
extern class Slice {
	/**
	 * The sprite associated with the slice.
	 */
	public var sprite:Sprite;

	/**
	 * The name of the slice.
	 */
	public var name:String;

	/**
	 * The bounds of the slice.
	 */
	public var bounds:Rectangle;

	/**
	 * The pivot point of the slice.
	 */
	public var pivot:Point;

	/**
	 * The color of the slice in the timeline.
	 */
	public var color:Color;

	/**
	 * User defined data for the slice.
	 */
	public var data:String;
}