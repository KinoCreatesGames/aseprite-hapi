package objects;

import constants.BlendMode;
import constants.PixelColor;
import constants.PixelColor.IntColor;
import haxe.extern.EitherType;
import Structs;

@:native('Image')
extern class Image {
	/**
	 * Width of the image.
	 */
	public var width:Int;

	/**
	 * Height of the image
	 */
	public var height:Int;

	/**
	 * Returns a rectangle with the bounds of the image
	 * with origin equal to (0, 0).
	 */
	public var bounds:Rectangle;

	/**
	 * Returns the cel to which the image belongs to.
	 */
	public var cel:Cel;

	/**
	 * Number of bytes for each row in the image. Each image
	 * has a total of `image.rowSide * image.height` bytes.
	 * It's useful if you are going to get or set the `Image.bytes`
	 * property manually.
	 */
	public var rowStride:Int;

	/**
	 * Number of bytes per pixel.
	 * 
	 * The number of visible pixels per row is `Image.width`,
	 * the number of bytes per row is `Image.rowStride`, the number
	 * of "visible bytes" is `image.width * image.bytesPerPixel`, and
	 * the number of "pixels per row" (visible pixels + hidden/just
	 * for alignment) is `image.rowStride / image.bytesPerPixel`.
	 */
	public var bytesPerPixel:Int;

	/**
	 * Creates a copy of the given image.
	 * @return Image
	 */
	public function clone():Image;

	/**
	 * Clears all pixels in the image with the given color
	 * @param color 
	 */
	public overload function clear(color:Color):Void;

	public overload function clear(bounds:Rectangle, color:Color):Void;

	/**
	 * Sets the pixel in the xy-coordinate to the given integer pixel
	 * value. The xy-coordinate is relative to the image, so pixel (0, 0)
	 * is the first pixel at the top-left coorner in the image, not in
	 * the sprite canvas.
	 *
	 * Warning: This method doesn't create undo information, you should
	 * clone the image and then patch it to get proper undo/redo information.
	 */
	public function drawPixel(x:Int, y:Int, color:Color):Void;

	/**
	 * Returns a integer pixel value for the given xy-coordinate related
	 * to the "Image" itself. The returned value will depend on the color
	 * mode of the image.
	 * 
	 * Do NOT confuse with the absolute xy-coordinate in the Canvas. In the
	 * following example, we show the differences between `getPixel()`,
	 * `Cel.bounds` and `Cel.position`:
	 *
	 * https://www.aseprite.org/api/image/getpixel.gif
	 */
	public function getPixel(x:Int, y:Int, color:Color):Void;

	/**
	 * Returns a integer pixel value for the given xy-coordinate related
	 * to the "Image" itself. The returned value will depend on the color
	 * mode of the image.
	 * 
	 * Do NOT confuse with the absolute xy-coordinate in the Canvas. In the
	 * following example, we show the differences between `getPixel()`,
	 * `Cel.bounds` and `Cel.position`:
	 *
	 * https://www.aseprite.org/api/image/getpixel.gif
	 *
	 * @param sourceSprite 
	 * @param position 
	 * @param opacity 
	 * @param blendMode
	 */
	public overload function drawImage(sourceImage:Image):Void;

	public overload function drawImage(sourceImage:Image, position:Point,
		opacity:Int, blendMode:BlendMode):Void;

	/**
	 * Draws the given sourceSprite frame number into the destinationImage.
	 * If position is a point, it will draw the sourceSprite in the given position.
	 *
	 * Warning: If the image is associated with a Cel, this method generates undo
	 * information, so you could use it as an individual operation or in a transaction.
	 * @param sourceSprite 
	 * @param frameNumber 
	 * @param position 
	 */
	public overload function drawSprite(sourceSprite:Sprite,
		frameNumber:Int):Void;

	public overload function drawSprite(sourceSprite:Sprite, frameNumber:Int,
		position:Point):Void;

	/**
	 * Returns true if both images look the same.
	 * Spec is equal and all pixels are the same.
	 * @param image 
	 * @return Bool
	 */
	public function isEqual(image:Image):Bool;

	/**
	 * Retrun true if all the pixels in the image are equal
	 * to the transparent color.
	 * @return Bool
	 */
	public function isEmpty():Bool;

	/**
	 * Returns true if all pixels in the image are equal to the given 
	 * color
	 * @param color
	 * @return Bool
	 */
	public function isPlain(color:EitherType<Color, IntColor>):Bool;

	public overload function pixels(rec:Rectangle):Color;
	public overload function pixels():Iterator<PixelColor>;

	/**
	 * Saves the image as a sprite with the given filename.
	 * @param fileName 
	 */
	public overload function saveAs(imgSaveT:ImgSaveAsT):Void;

	public overload function saveAs(fileName:String):Void;

	/**
	 * Resizes the image. Pivot point by default is (0, 0)
	 * @param width 
	 * @param height 
	 */
	public overload function resize(imgResize:ImgResizeT):Void;

	public overload function resize(width:Int, height:Int):Void;

	/**
	 * Returns the shrunken bounds (a rectangle) of the image removing
	 * all the empty space of borders using the mask color or the given reference color in refColor.
	 * @param refColor 
	 */
	public overload function shrinkBounds():Void;

	public overload function shrinkBounds(refColor:Color):Void;
}