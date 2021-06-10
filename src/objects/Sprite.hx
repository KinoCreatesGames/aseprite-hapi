package objects;

import Structs.SpriteT;
import Structs.SetPalleteT;
import constants.ColorMode;

/**
 * The sprite that's associated with the canvas 
 * in the application. 
 */
@:native('Sprite')
extern class Sprite {
	/**
	 * Returns or changes the sprite width.
	 * Use `Sprite.resize` if you want to change the sprite size
	 * resizing layers, image, etc.
	 */
	public var width:Int;

	/**
	 * Returns or the changes the sprite height.
	 		* Use `Sprite.resize` if you want to change the sprite size
	 		* resizing layers, image, etc.
	 */
	public var height:Int;

	/**
	 * Returns the bounds of the sprite as a rectangle in the 
	 * position of (0, 0).
	 */
	public var bounds:Rectangle;

	/**
	 * Gets or sets the bounds of the sprite   
	 * grid as a rectangle.
	 */
	public var gridBounds:Rectangle;

	/**
	 * Gets or sets the pixel ratio of the sprite as a size.
	 */
	public var pixelRation:Size;

	/**
	 * Gets or sets the aactive sprite selection. This property
	 * is an instance of the selection class to manipulate the set
	 * of selected pixels in the canvas.
	 */
	public var selection:Selection;

	/**
	 * Gets or sets the name of the file from where this sprite
	 * is loaded or saved. Or an empty string if this is a new sprite
	 * without an associated file.
	 */
	public var filename:String;

	/**
	 * The color mode of the sprite.
	 */
	public var colorMode:ColorMode;

	/**
	 * The image specification of the images 
	 * associated with the sprite.
	 */
	public var spec:ImageSpec;

	/**
	 * An array of frames associated with the sprite.
	 */
	public var frames:Array<Frame>;

	/**
	 * An array of palettes associated with the sprite.
	 * Generally it only contains one palette.
	 * Future, will support color cycling animations.
	 */
	public var palettes:Array<Palette>;

	/**
	 * An array of layers associated with the sprite.
	 */
	public var layers:Array<Layer>;

	/**
	 * An array of cels associated with the sprite.
	 */
	public var cels:Array<Cel>;

	/**
	 * An array of tags associated with the sprite.
	 */
	public var tags:Array<Tag>;

	/**
	 * An array of slices associated with the sprite.
	 */
	public var slices:Array<Slice>;

	/**
	 * The background layer or `nil` if the sprite
	 * doesn't have a bakground layer.
	 */
	public var backgroundLayer:Layer;

	/**
	 * Default is 0.
	 * Returns the transparent color index. 
	 * This index is an integer that specifies what index is
	 * the transparent color in `transparent layers on indexed sprites`.
	 */
	public var transparentColor:Int;

	@:overload(function(spriteT:SpriteT):Sprite {})
	@:overload(function(spec:ImageSpec):Sprite {})
	@:overload(function(spr:Sprite):Sprite {})
	public function new(width:Int, height:Int, ?colorMode:CMode);

	/**
	 * Resizes the sprite and all frames / cels to the
	 		* given dimensions.
	 */
	public overload function resize(size:Size):Void;

	public overload function resize(width:Int, height:Int):Void;

	/**
	 * Crops the sprite to the given dimensions.
	 */
	@:overload(function(rectangle:Rectangle):Void {})
	public function crop(x:Int, y:Int, width:Int, height:Int):Void;

	/**
	 * Saves the sprite to the given file and mark the sprite
	 * as saved.
	 * @param fileName 
	 */
	public function saveAs(fileName:String):Void;

	/**
	 * Saves a copy of the sprite in the given file but doesn't change
	 * the saved state of the sprite. If the sprite is modified and the
	 * user trys to close it, the user will be asked to save changes.
	 * @param fileName 
	 */
	public function saveCopyAs(fileName:String):Void;

	/**
	 * Closes he sprite file. This doesn't ask the user to save changes.
	 * If you want to do the classic File > Close.
	 * `app.command.CloseFile()`
	 */
	public function close():Void;

	/**
	 * Loads a palette from the specified file name.
	 * @param fileName 
	 */
	public function loadPalette(fileName:String):Void;

	/**
	 * Sets the palette of the sprite.
	 * @param palette 
	 */
	@:overload(function(paletteT:SetPalleteT):Void {})
	public function setPalette(palette:Palette):Void;

	public function assignColorSpace(colorSpace:ColorSpace):Void;

	/**
	 * Converts all the sprite pixels to a new color space so the image 
	 * looks the same as in previous color space (all pixels will be
	 * adjusted to the new color space).
	 * @param color 
	 */
	public function convertColorSpace(color:ColorSpace):Void;

	/**
	 * Creates a new layer.
	 * @return Layer
	 */
	public function newLayer():Layer;

	/**
	 * Creates a new layer that is considered a group.
	 * @return Layer
	 */
	public function newGroup():Layer;

	/**
	 * Delete a layer  from the sprite.
	 */
	@:overload(function(layerName:String):Void {})
	public function deleteLayer(layer:Layer):Void;

	/**
	 * Returns a new frame with a copy of the given
	 		* frame object's data.
	 * @param frame
	 * @return Frame
	 */
	@:overload(function(frameNumber:Int):Frame {})
	public function newFrame(frame:Frame):Frame;

	/**
	 * Returns a new empty frame.
	 * @return Frame
	 */
	public function newEmptyFrame():Frame;

	/**
	 * Deletes the specified frame passed in.
	 * @return Frame
	 */
	public function deleteFrame(frame:Frame):Frame;

	/**
	 * Creates a new cel on the specified layer at 
	 		* that specified frame.
	 */
	@:overload(function(layer:Layer, frame:Frame, image:Image,
		position:Point):Cel {})
	public function newCel(layer:Layer, frame:Frame):Cel;

	/**
	 * Deletes a cel from the specified layer or the cel passed in.
	 */
	@:overload(function(layer:Layer, frame:Frame):Void {})
	public function deleteCel(cel:Cel):Void;

	/**
	 * Creates a new tag at the current frame to the specified frame.
	 * @param fromFrameNumber 
	 * @param toFrameNumber 
	 * @return Tag
	 */
	public function newTag(fromFrameNumber:Int, toFrameNumber:Int):Tag;

	/**
	 * Deletes a specified tag from the sprite.
	 		* @param Tag
	 */
	@:overload(function(tagName:String):Void {})
	public function deleteTag(tag:Tag):Void;

	/**
	 * Creates a new slice  on the 
	 		* current sprite.
	 * @param rectangle 
	 * @return Slice
	 */
	public function newSlice(?rectangle:Rectangle):Slice;

	/**
	 * Deletes a slice from the sprite.
	 		* @param slice
	 */
	@:overload(function(sliceName:String):Void {})
	public function deleteSlice(slice:Slice):Void;

	/**
	 * Flattens all layers of the sprite into one layer.
	 * It's like calling `app.commands.FlattenLayers()`
	 */
	public function flatten():Void;
}