package constants;

/**
 * Integer representing brush type.
 * Type used for convenience.
 */
typedef BrushT = Int;

/**
 * Brush types in Aseprite.
 * Constants
 */
@:native('BrushType')
extern class BrushType {
	/**
	 * Circular Brush
	 */
	public static var CIRCLE:BrushT;

	/**
	 * Square Brush
	 */
	public static var SQUARE:BrushT;

	/**
	 * Line Brush
	 */
	public static var LINE:BrushT;

	/**
	 * Using an image as a brush
	 */
	public static var IMAGE:BrushT;
}