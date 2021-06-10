/**
 * The application of Aseprite.
 */

import Structs.UseToolT;
import Structs.AlertMsgT;
import objects.Point;
import constants.MouseButton;
import constants.Ink;
import haxe.DynamicAccess;
import objects.Color;
import constants.PixelColor;
import objects.Brush;
import objects.Tool;
import objects.Tag;
import objects.Sprite;
import objects.Layer;
import objects.Image;
import objects.Frame;
import objects.Cel;
import objects.Range;
import objects.Site;

@:native('app')
extern class App {
	/**
	 * The active site (active image, layer, frame, sprite, etc).
	 */
	public static var site:Site;

	/**
	 * Range member representing the active selection of 
	 * frames, cels, layers, etc.
	 */
	public static var range:Range;

	/**
	 * Active cel object in the app.
	 */
	public static var activeCel:Cel;

	/**
	 * Active frame in the application. 
	 */
	public static var activeFrame:Frame;

	/**
	 * Active Image in the application.
	 */
	public static var activeImage:Image;

	/**
	 * Active Layer in the application. 
	 */
	public static var activeLayer:Layer;

	/**
	 * Active sprite in the application.
	 */
	public static var activeSprite:Sprite;

	/**
	 * Active tag in the application.
	 * This is located in the active frame.
	 */
	public static var activeTag:Tag;

	/**
	 * Active tool; a tool selected in the tool bar.
	 */
	public static var activeTool:Tool;

	/**
	 * Active brush; a brush selected in the context bar.
	 */
	public static var activeBrush:Brush;

	/**
	 * Pixel color namespace; contains internal functions
	 * to handle color at the lowest level.
	 */
	@:luaDotMethod
	public static var pixelColor:PixelColor;

	public static var version:objects.Version;

	/**
	 * Returns the API version number.
	 */
	public static var apiVersion:String;

	/**
	 * Gets or sets the current foreground color.
	 */
	public static var fgColor:Color;

	/**
	 * Gets or sets the current background color.
	 */
	public static var bgColor:Color;

	/**
	 * Returns true if the user interface is available.
	 * If this is true you can use `app.alert or dialogs`.
	 */
	public static var isUIAvailable:Bool;

	/**
	 * Returns an array of sprites that are available 
	 * in the application.
	 */
	public static var sprites:Array<Sprite>;

	/**
	 * Table with parameters specified as --script-param key=value  
	 * in the CLI or as <param> in user.aseprite.keys.
	 */
	public static var params:DynamicAccess<String>;

	/**
	 * Command handler for Aseprite tool.
	 */
	public static var command:Command;

	/**
	 * Preferences for the Aseprite application.
	 		* These are the functions.
	 */
	public static var preferences:Preferences;

	/**
	 * Preferences for the Aseprite application.
	 * Allows you to dynamically access the data. 
	 * Stored in the pref.xml
	 */
	@:native('preferences')
	public static var prefData:DynamicAccess<String>;

	/**
	 * Fs for the Aseprite application.
	 */
	public static var fs:FS;

	/**
	 * Shows an alert message on the screen.
	 		* Returns an integer with the selected button.
	 */
	@:luaDotMethod
	public overload static function alert(alert:AlertMsgT):Void;

	@:luaDotMethod
	public overload static function alert(alertMsg:String):Void;

	/**
	 * Opens a new sprite loading it from the given filename.
	 * Returns an instance of the sprite class.
	 * @param fileName 
	 */
	public static function open(fileName:String):Sprite;

	/**
	 * Exits the application.
	 */
	public static function exit():Void;

	/**
	 * Allows you to group all actions into a single transaction.
	 * This allows all the steps to be undo'd together once executed.
	 * @param fn
	 */
	public static function transaction(fn:Void -> Void):Void;

	/**
	 * not usually needed. This is available to update the 
	 * sprite on screen if there's no update on the Aseprite side.
	 */
	public static function refresh():Void;

	/**
	 * Undoes the last operation in the activeSprite.
	 */
	@:luaDotMethod
	public static function undo():Void;

	/**
	 * Redoes the last undone operation in the active sprite.
	 */
	@:luaDotMethod
	public static function redo():Void;

	/**
	 * Simulates a user stroke in the canvas using the given tool.
	 *  tool A string well a well known tool ID
	 *  color A color object to draw with the given tool
	 *  brush A brush object to draw the points
	 *  points Array of points in the sprite canvas which simulate
	 *  cel   Cel where we want to use the tool/draw with the tool
	 *  layer  where we want to use the tool/draw with the tool
	 *  frame where to draw
	 *  ink 
	 *  button 
	 *  opacity Opacity of the brush for example 
	 *  contiguous 
	 *  tolerance 
	 *  freehandAlgorithm 
	 */
	public static function useTool(toolT:UseToolT):Void;
}