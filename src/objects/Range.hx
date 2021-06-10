package objects;

import constants.RangeType.RangeT;

/**
 * Represents the range of selected objects.
 */
@:native('Range')
extern class Range {
	public function new();
	@:native('type')
	public var rangeType:RangeT;

	/**
	 * Returns true if the range is empty (Nothing is selected).
	 */
	public var isEmpty:Bool;

	/**
	 * The sprite the range is associated with.
	 */
	public var sprite:Sprite;

	/**
	 * Returns the array of selected layers.
	 */
	public var layers:Array<Layer>;

	/**
	 * Returns the array of selected frames.
	 */
	public var frames:Array<Frame>;

	/**
	 * Returns the array of selected cels.
	 */
	public var cels:Array<Cel>;

	/**
	 * Returns the array of selected images.
	 * (Images from linked cels are counted just one time).
	 */
	public var images:Array<Image>;

	/**
	 * Returns the array of selected images in the range
	 * that are in unlocked layers (editable).
	 */
	public var editableImages:Array<Image>;

	/**
	 * Returns the array of selected palette entries in the color
	 * bar. Each element is an integer (Palette index).
	 */
	public var colors:Array<Int>;

	/**
	 * Returns true if the given object is inside the selected
	 * range.
	 */
	public overload function contains(frame:Frame):Bool;

	public overload function contains(cel:Cel):Bool;
	public overload function contains(layer:Layer):Bool;

	/**
	 * Returns true if the given color index is selected
	 * in the color bar.
	 * @param colorIndex 
	 * @return Bool
	 */
	public function containsColor(colorIndex:Int):Bool;

	/**
	 * Clears the range selection.
	 */
	public function clear():Void;
}