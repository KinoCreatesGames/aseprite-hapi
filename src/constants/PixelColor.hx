package constants;

/**
 * 32-bit unsigned integer used for color.
 * Also type alias for 16-bit integer used for grayscale.
 */
typedef IntColor = Int;

/**
 * PixelColor namespace. 
 * Static extern class.
 */
@:native('PixelColor')
extern class PixelColor {
	/**
	 * X Position
	 */
	public var x:Int;

	/**
	 * Y Position
	 */
	public var y:Int;

	/**
	 * Constructs a 32-bit unsigned integer for RGBA.
	 * 0-255 for each integer.
	 * @param r 
	 * @param g 
	 * @param b 
	 * @param a 
	 * @return IntColor
	 */
	@:luaDotMethod
	public function rgba(r:Int, g:Int, b:Int, ?a:Int):IntColor;

	/**
	 * Returns the red component of the 32-bit integer.
	 * @param rgbaPixel 
	 * @return IntColor
	 */
	@:luaDotMethod
	public function rgbaR(rgbaPixel:IntColor):IntColor;

	/**
	 * Returns the green component of the 32-bit integer.
	 * @param rgbaPixel 
	 * @return IntColor
	 */
	@:luaDotMethod
	public function rgbaG(rgbaPixel:IntColor):IntColor;

	/**
	 * Returns the blue component of the 32-bit integer.
	 * @param rgbaPixel 
	 * @return IntColor
	 */
	@:luaDotMethod
	public function rgbaB(rgbaPixel:IntColor):IntColor;

	/**
	 * Returns the Alpha component of the 32 bit integer.
	 * @param rgbaPixel 
	 * @return IntColor
	 */
	@:luaDotMethod
	public function rgbaA(rgbaPixel:IntColor):IntColor;

	/**
	 * Constructs a 16-bit unsigned integer grayscale.
	 * 0-255
	 * @param gray 
	 * @param alpha 
	 * @return IntColor
	 */
	@:luaDotMethod
	public function graya(gray:Int, alpha:Int):IntColor;

	/**
	 * Returns the gray component of the given 16-bit integer.
	 * @param grayPixelValue 
	 * @return IntColor
	 */
	@:luaDotMethod
	public function grayaV(grayPixelValue:IntColor):IntColor;

	/**
	 * Returns the alpha component of the given 16-bit integer.
	 * @param grayPixelValue 
	 * @return IntColor
	 */
	@:luaDotMethod
	public function grayaA(grayPixelValue:IntColor):IntColor;
}