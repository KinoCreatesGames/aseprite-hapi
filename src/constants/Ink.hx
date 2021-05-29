package constants;

import haxe.extern.EitherType;

/**
 * Either String or Integer
 * ```
 * InkType = 1
 * InkType = "simple"
 * ```
 */
typedef InkT = EitherType<String, Int>;

/**
	* Ink Constants
		*Documentation: https://www.aseprite.org/docs/ink/ 
 */
@:native('Ink')
extern class Ink {
	/**
	 * 0 or "simple"
	 */
	public static var SIMPLE:InkT;

	/**
	 * 1 or "alpha_compositing" or "alpha-compositing"
	 */
	public static var ALPHA_COMPOSITING:InkT;

	/**
	 * 2 or "copy_color" or "copy-color";
	 */
	public static var COPY_COLOR:InkT;

	/**
	 * 3 or "lock_alpha" or "lock-alpha"
	 */
	public static var LOCK_ALPHA:InkT;

	/**
	 * 4 or "shading"
	 */
	public static var SHADING:InkT;
}