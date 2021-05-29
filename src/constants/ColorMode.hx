package constants;

typedef CMode = Int;

extern class ColorMode {
	/**
	 * RGBA color mode sprites. Each pixel is 32-bit unsigned integer.
	 		* 0-255 colors 8 bits each.
	 */
	public static var RGB:CMode;

	/**
	 * Creates gray scale colored sprites.
	 */
	public static var GRAY:CMode;

	/**
	 * Deprecated; creates gray scale colored sprites.
	 */
	public static var GRAYSCALE:CMode;

	/**
	 * Creates indexed colored sprites.
	 */
	public static var INDEXED:CMode;
}