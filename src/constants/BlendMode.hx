package constants;

/**
 * Blend Mode
 */
typedef BMode = Int;

/**
 * Blend mode
 */
@:native('BlendMode')
extern class BlendMode {
	public static var NORMAL:BMode;
	public static var MULTIPLY:BMode;
	public static var SCREEN:BMode;
	public static var OVERLAY:BMode;
	public static var DARKEN:BMode;
	public static var LIGHTEN:BMode;
	public static var COLOR_DODGE:BMode;
	public static var COLOR_BURN:BMode;
	public static var HARD_LIGHT:BMode;
	public static var SOFT_LIGHT:BMode;
	public static var DIFFERENCE:BMode;
	public static var EXCLUSION:BMode;
	public static var HSL_HUE:BMode;
	public static var HSL_SATURATION:BMode;
	public static var HSL_COLOR:BMode;
	public static var HSL_LUMINOSITY:BMode;
	public static var ADDITION:BMode;
	public static var SUBTRACT:BMode;
	public static var DIVIDE:BMode;
}