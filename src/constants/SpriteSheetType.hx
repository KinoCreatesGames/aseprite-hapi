package constants;

import constants.SpriteSheetDataFormat.SprSheetFmtT;

/**
 * Sprite Sheet Type represented as an Integer.
 */
typedef SprSheetT = Int;

/**
 * Type of spritesheet used in
 * `app.command.ExportSpriteSheet`  
 */
@:native('SpriteSheetType')
extern class SpriteSheetType {
	/**
	 * Export sprite sheet horizontally.
	 */
	public static var HORIZONTAL:SprSheetT;

	/**
	 * Export sprite sheet vertically.
	 */
	public static var VERTICAL:SprSheetT;

	/**
	 * Export sprite sheet as a set of rows.
	 */
	public static var ROWS:SprSheetT;

	/**
	 * Export sprite sheet as a set of columns.
	 */
	public static var COLUMNS:SprSheetT;

	/**
	 * Export sprite sheet packed.
	 */
	public static var PACKED:SprSheetT;
}