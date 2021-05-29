package constants;

typedef RangeT = Int;

/**
 * The type of range selected in the timeline.
 * Constant. 
 */
@:native('RangeType')
extern class RangeType {
	/**
	 * When there is no range selection.
	 */
	public static var EMPTY:RangeT;

	/**
	 * When the selection is in the layers.
	 */
	public static var LAYERS:RangeT;

	/**
	 * When the selection is in the frames.
	 */
	public static var FRAMES:RangeT;

	/**
	 * When the selection is in the cels.
	 */
	public static var CELS:RangeT;
}