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
	 * @param wait 
	 */
	public function show(?wait:Bool):Void;

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
	 * Creates a new label.
	 * If you specify the id, a field in Dialog.data
	 * will be created with the given string in `text`.
	 * @param id 
	 * @param label 
	 * @param text 
	 */
	public function label(id:String, label:String, text:String):Void;
}