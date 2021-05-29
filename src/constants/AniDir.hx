package constants;

typedef AnimDir = Int;

/**
 * Animation Direction
 */
@:native('AniDir')
extern class AniDir {
	/**
	 * Animate the sprite in the forward direction.
	 */
	public static var FORWARD:AnimDir;

	/**
	 * Animate the sprite in the reverse direction.
	 */
	public static var REVERSE:AnimDir;

	/**
	 * Animate the sprite back and forth.
	 */
	public static var PING_PONG:AnimDir;
}