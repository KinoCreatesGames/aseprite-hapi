package objects;

/**
 * Version number information.
 */
@:native('Version')
extern class Version {
	/**
	 * Major version of the string.
	 */
	public var major:Int;

	/**
	 * minor version of the string.
	 */
	public var minor:Int;

	/**
	 * Patch version of the string.
	 */
	public var patch:Int;

	/**
	 * Returns the label beta/alpha/dev
	 */
	public var prereleaseLabel:String;

	/**
	 * Returns the pre-release version number
	 */
	public var prereleaseNumber:Int;
}