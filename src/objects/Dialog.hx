package objects;

/**
 * Dialog class is used to show input controls/widgets on the screen
 * to get some data from the user.
 */
@:native('Dialog')
extern class Dialog {
	/**
	 * The bounds aka the size of the dialog.
	 * Might be useful to align several dialogs.
	 */
	public var bounds:Rectangle;

	/**
	 * Gets/sets a table with one field for each widget with a
	 * given `Id`. For each different kind of widget the field
	 * is of different types.
	 */
	public var data:String;

	/**
	 * Creates a new dialog. Dialog is hidden;
	 * You have to call `Dialog.show` to make it visible.
	 */
	@:overload(function(title:String, ?onClose:Dialog -> Void):Dialog {})
	public function new();

	/**
	 * Creates a button within the dialog.
	 */
	public function button(id:String, label:String, text:String,
		selected:Bool, focus:Bool, onClick:Void -> Void):Void;

	/**
	 * Creates a check box.
	 		* Similar to the button.
	 */
	public function check(id:String, label:String, text:String, selected:Bool,
		focus:Bool, onClick:Void -> Void):Void;

	/**
	 * Closes the dialog from the onclick button.
	 * By default buttons without an onclick event handler
	 * will close the dialog, but if you specify a onClick,
	 * you have to call this function to close the dialog.
	 */
	public function close():Void;

	/**
	 * Creates a button to select a color.
	 * @param id 
	 * @param label 
	 * @param color 
	 */
	public function color(id:String, label:String, color:Color):Void;

	/**
	 * Shows the dialog box on screen.
	 		* With bounds
	 * @param wait  if false, dialog is open in the background.
	 		* @param bounds allows you to display the dialog at a 
	 		* certain point on the screen.
	 */
	public function show(?wait:Bool = false, ?bounds:Rectangle):Void;

	/**
	 * Creates a text entry in the dialog.
	 * @param id 
	 * @param label 
	 * @param text 
	 * @param focus 
	 */
	public function entry(id:String, label:String, text:String,
		focus:Bool):Void;

	/**
	 * Modifies the properties of the given widget that matches the identifier.
	 * @param id 
	 * @param visible 
	 * @param enabled 
	 * @param text 
	 */
	public function modify(id:String, visible:Bool, enabled:Bool,
		text:String):Void;

	/**
	 * Creates a new row in the dialogue.
	 		* The next widget should be put in the new row.
	 		* Using the always = true, avoids joining widgets of the same type.
	 */
	@:overload(function(always:Bool = true):Void {})
	public function newrow():Void;

	/**
	 * Creates a new entry field for entering numbers.
	 * @param id 
	 * @param label 
	 * @param text 
	 * @param decimals 
	 */
	public function number(id:String, label:String, text:String,
		decimals:Int):Void;

	/**
	 * Creates a radio button in the dialog window.
	 * Same arguments as `Dialog.button`
	 * @param id 
	 * @param label 
	 * @param text 
	 * @param selected 
	 * @param onClick 
	 */
	public function radio(id:String, label:String, text:String, selected:Bool,
		onClick:Void -> Void):Void;

	/**
	 * Creates a new separator in the dialog window.
	 * @param id 
	 * @param label 
	 * @param text 
	 */
	public function separator(id:String, label:String, text:String):Void;

	/**
	 * Creates a widget with a set of colors that can be clicked/picked, 
	 * or can be sorted, based on the mode.
	 * Sort types = "pick" or "sort"
	 * Default mode is sort.
	 * @param id 
	 * @param label 
	 * @param mode 
	 * @param colors 
	 * @param onClick 
	 */
	public function shades(id:String, label:String, mode:String,
		colors:Array<Color>, onClick:DialogEvent -> Void):Void;

	/**
	 * Creates a new label.
	 * If you specify the id, a field in Dialog.data
	 * will be created with the given string in `text`.
	 * @param id 
	 * @param label 
	 * @param text 
	 */
	public function label(id:String, label:String, text:String):Void;

	/**
	 * Creates a slider in the dialog box.
	 		* With the min and max, plus label that you specify.
	 * @param id 
	 * @param label 
	 * @param min 
	 * @param max 
	 * @param value 
	 */
	public function slider(id:String, label:String, min:Int, max:Int,
		value:Int):Void;

	/**
	 * Creates a text field plus a button to select one file to open 
	 * or save.
	 * open=true shows a dialog to open an existing file.(default mode) 
	 * save=true shows a dialog to select an existing file to 
	 * overwrite or a new file to save. 
	 * @param id 
	 * @param label 
	 * @param title 
	 * @param open 
	 * @param save 
	 * @param fileName 
	 * @param fileTypes 
	 * @param onChange 
	 */
	public function file(id:String, label:String, title:String,
		open:Bool = true, save:Bool, fileName:String, fileTypes:Array<String>,
		onChange:Void -> Void):Void;
}