package objects;

import constants.BlendMode.BMode;
import haxe.extern.EitherType;

@:native('Layer')
/**
 * A layer within the Aseprite sprite. 
 */
extern class Layer {
	/**
	 * Sprite the layer is attached to.
	 */
	public var sprite:Sprite;

	/**
	 * Gets or sets the layer blend mode.
	 */
	public var blendMode:BMode;

	/**
	 * Name of the current layer.
	 */
	public var name:String;

	public var layers:Array<Layer>;

	/**
	 * 0-255. The alpha of the layer.
	 */
	public var opacity:Int;

	/**
	 * Gets the sprite or layer that the
	 * layer is attached to.
	 */
	public var parent:EitherType<Sprite, Layer>;

	/**
	 * Position of the layer in the stack.
	 * Bigger numbers in the layer above.
	 */
	public var stackIndex:Int;

	/**
	 * THe collection of cels on the current layer.
	 */
	public var cels:Array<Cel>;

	public var color:Color;
	public var data:String;

	/**
	 * True if the layer has cels with images.
	 */
	public var isImage:Bool;

	/**
	 * True if the layer is grouping other
	 * layers.
	 */
	public var isGroup:Bool;

	/**
	 * True if the layer is a transparent
	 * layer. These layers have an indexed
	 * color mode. Transparent index is not visible.
	 * 
	 */
	public var isTransparent:Bool;

	/**
	 * True if the layer is a background.
	 * Background layers are fully opaque.
	 * They don't have an alpha channel.
	 */
	public var isBackground:Bool;

	/**
	 * Whether the layer is editable.
	 */
	public var isEditable:Bool;

	/**
	 * Whether the layer is visible.
	 */
	public var isVisible:Bool;

	/**
	 * Whether the layer is continuous.
	 */
	public var isContinuous:Bool;

	/**
	 * Whether the layer is collapsed.
	 */
	public var isCollapsed:Bool;

	/**
	 * Whether the layer is expanded.
	 */
	public var isExpanded:Bool;

	/**
	 * Returns the cel in the given frame or frame number.
	 * @param frameNumber 
	 * @return Cel
	 */
	overload public function cel(frameNumber:Int):Cel;

	overload public function cel(frame:Frame):Cel;
}