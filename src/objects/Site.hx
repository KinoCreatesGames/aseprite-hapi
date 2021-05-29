package objects;

/**
 * Saves the active state of the editor at a specific moment. 
 * Which active sprite, layer, frame, cel image, etc were in a moment.
 * This only occurs if you save the object.
 */
@:native('Site')
extern class Site {
	/**
	 * The sprite at the time the site was created.
	 */
	public var sprite:Sprite;

	/**
	 * The layer at the time the site was created.
	 */
	public var layer:Layer;

	/**
	 * The cel at the time the site was created.
	 */
	public var cel:Cel;

	/**
	 * The frame at the time the site was created.
	 */
	public var frame:Frame;

	/**
	 * The frame number at the time the site was created.
	 * Starts at 1.
	 */
	public var frameNumber:Int;

	/**
	 * The image at the time the site was created.
	 */
	public var image:Image;
}