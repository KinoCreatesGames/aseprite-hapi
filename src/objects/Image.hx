package objects;

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
	 * Returns the cel to which the image belongs to.
	 */
	public var cel:Cel;

	/**
	 * Creates a copy of the given image.
	 * @return Image
	 */
	public function clone():Image;

	/**
	 * Clears all pixels in the image with the given color
	 * @param color 
	 */
	public function clear(color:Color):Void;

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

	@:overload(function(rectangle:Rectangle):Color {})
	public function pixels():Iterator<PixelColor>;

	/**
	 * Saves the image as a sprite with the given filename.
	 * @param fileName 
	 */
	@:overload(function(imgSaveT:ImgSaveAsT):Void {})
	public function saveAs(fileName:String):Void;

	/**
	 * Resizes the image. Pivot point by default is (0, 0)
	 * @param width 
	 * @param height 
	 */
	@:overload(function(imgResizeT:ImgResizeT):Void {})
	public function resize(width:Int, height:Int):Void;
}