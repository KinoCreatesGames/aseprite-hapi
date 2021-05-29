package objects;

import constants.AniDir;

/**
 * Represents a tag in the timeline when working with animation.
 */
@:native('Tag')
extern class Tag {
	/**
	 * Returns the sprite to which this tag belongs.
	 */
	public var sprite:Sprite;

	/**
	 * Returns the first frame object where this tag starts.
	 */
	public var fromFrame:Frame;

	/**
	 * Returns the last frame object where this tag ends.
	 */
	public var toFrame:Frame;

	/**
	 * Returns the number of frames that this tag contains.
	 * This equal to:
	 * ```
	 * tag.toFrame.frameNumber - tag.fromFrame.frameNumber + 1
	 * ```
	 */
	public var frames:Int;

	/**
	 * Returns the name of the tag in the timeline.
	 */
	public var name:String;

	/**
	 * Animation Direction
	 */
	public var aniDir:AnimDir;

	/**
	 * The color of the tag in the timeline.
	 * This is a user defined color.
	 */
	public var color:Color;
}