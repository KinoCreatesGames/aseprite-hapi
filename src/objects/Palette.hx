package objects;

@:native('Palette')
extern class Palette {
	public function new(numColors:Int);
	@:selfCall
	public function newWithPalette(palette:Palette):Palette;
	@:selfCall
	public function newWithFile(fileName:String):Palette;

	/**
	 * Changes the number of palette colors to ncolors.
	 * @param ncolors 
	 */
	public function resize(ncolors:Int):Void;

	/**
	 * Returns the color in the given entry.
	 * @return Color
	 */
	public function getColor(index:Int):Color;

	/**
	 * Sets the color within the palette.
	 * @param index 
	 * @param color 
	 */
	public function setColor(index:Int, color:Color):Void;

	/**
	 * Sets the color within the palette.
	 * @param index 
	 * @param color 
	 */
	@:native('setColor')
	public function setColorWithInt(index:Int, color:Int):Void;

	/**
	 * Returns the first frame, but will support more in
	 		* the future.
	 */
	public var frame:Frame;

	/**
	 * Saves the palette with the given file name.
	 * @param fileName 
	 */
	public function saveAs(fileName:String):Void;
}