package constants;

typedef SprSheetFmtT = Int;

/**
 * Spritesheet data format.
 * Data format used to export JSON files in 
 * `app.command.ExportSpriteSheet`.
 */
extern class SpriteSheetDataFormat {
	/**
	 * Json hash format type.
	 */
	public static var JSON_HASH:SprSheetFmtT;

	/**
	 * Json Array format type.
	 */
	public static var JSON_ARRAY:SprSheetFmtT;
}