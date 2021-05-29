package objects;

/**
 * This is an auxiliary object that points toa given frame in the 
 * sprite and can be used to adjust information about the frame.
 * If you modify the number of frames in the sprite,
 * or the structure of the frames, a `Frame` object will still 
 * point to the same frame number.
 */
@:native('Frame')
extern class Frame {
	/**
	 * the sprite that the frame is associated with.
	 */
	public var sprite:Sprite;

	/**
	 * The frame number of the current frame.
	 */
	public var frameNumber:Int;

	/**
	 * The duration of this frame in the animation in seconds.
	 */
	public var duration:Float;

	/**
	 * Returns the previous frame.
	 * `nil` if this is the first frame.
	 */
	public var previous:Frame;

	/**
	 * Returns the next frame number or 
	 * `nil` if this is the last frame.
	 */
	public var next:Frame;
}