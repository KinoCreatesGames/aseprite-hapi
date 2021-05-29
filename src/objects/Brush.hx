package objects;

import constants.BrushPattern.BPattern;
import constants.BrushType.BrushT;

/**
 * Identifiers a brush to paint with:
 * ```
 * app.useTool();
 * ```
 */
@:native('Brush')
class Brush {
	/**
	 * Type of the brush.
	 		* CIRCLE
	 		* SQUARE
	 		* IMAGE
	   * PATTERN
	 */
	public var type:BrushT;

	/**
	 * Brush size
	 */
	public var size:Size;

	/**
	 * Angle of the brush.
	 */
	public var angle:Float;

	/**
	 * Image of the brush
	 */
	public var image:Image;

	/**
	 * Center of the brush
	 */
	public var center:Point;

	/**
	 * Pattern of the current brush.
	 */
	public var pattern:BPattern;

	/**
	 * Origin of the pattern of the brush
	 */
	public var patternOrigin:Point;
}