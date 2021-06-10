package objects;

import Structs;

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
	@:overload(function(diaT:DiaT):Dialog {})
	public function new(?title:String);

	/**
	 * Creates a button within the dialog.
	 */
	public function button(buttonT:ButtonT):Dialog;

	/**
	 * Creates a check box.
	 		* Similar to the button.
	 */
	public function check(buttonT:ButtonT):Dialog;

	/**
	 * Closes the dialog from the onclick button.
	 * By default buttons without an onclick event handler
	 * will close the dialog, but if you specify a onClick,
	 * you have to call this function to close the dialog.
	 */
	public function close():Dialog;

	/**
	 * Creates a combo/drop-down list
	 * @param comboBoxT 
	 * @return Dialog
	 */
	public function combobox(comboBoxT:ComboBoxT):Dialog;

	/**
	 * Creates a button to select a color.
	 * @param id 
	 * @param label 
	 * @param color 
	 */
	public function color(colorT:ColorT):Dialog;

	/**
	 * Shows the dialog box on screen.
	 		* With bounds
	 * @param wait  if false, dialog is open in the background.
	 		* @param bounds allows you to display the dialog at a 
	 		* certain point on the screen.
	 */
	public function show(?showT:ShowT):Dialog;

	/**
	 * Creates a text entry in the dialog.
	 * @param id 
	 * @param label 
	 * @param text 
	 * @param focus 
	 */
	public function entry(entryT:EntryT):Dialog;

	/**
	 * Modifies the properties of the given widget that matches the identifier.
	 * @param id 
	 * @param visible 
	 * @param enabled 
	 * @param text 
	 */
	public function modify(modifyT:ModifyT):Dialog;

	/**
	 * Creates a new row in the dialogue.
	 		* The next widget should be put in the new row.
	 		* Using the always = true, aDialogs joining widgets of the same type.
	 */
	public overload function newrow(newRowT:NewRowT):Dialog;

	public overload function newrow():Dialog;

	/**
	 * Creates a new entry field for entering numbers.
	 * @param id 
	 * @param label 
	 * @param text 
	 * @param decimals 
	 */
	public function number(numberT:NumberT):Dialog;

	/**
	 * Creates a radio button in the dialog window.
	 * Same arguments as `Dialog.button`
	 * @param id 
	 * @param label 
	 * @param text 
	 * @param selected 
	 * @param onClick 
	 */
	public function radio(radioT:ButtonT):Dialog;

	/**
	 * Creates a new separator in the dialog window.
	 * @param id 
	 * @param label 
	 * @param text 
	 */
	public function separator(sepT:LabelT):Dialog;

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
	public function shades(shadesT:ShadesT):Dialog;

	/**
	 * Creates a new label.
	 * If you specify the id, a field in Dialog.data
	 * will be created with the given string in `text`.
	 * @param id 
	 * @param label 
	 * @param text 
	 */
	public function label(labelT:LabelT):Dialog;

	/**
	 * Creates a slider in the dialog box.
	 		* With the min and max, plus label that you specify.
	 * @param id 
	 * @param label 
	 * @param min 
	 * @param max 
	 * @param value 
	 */
	public function slider(sliderT:SliderT):Dialog;

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
	public function file(fileT:FileT):Dialog;
}