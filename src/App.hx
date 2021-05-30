/**
 * The application of Aseprite.
 */

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
	public var site:Site;

	/**
	 * Range member representing the active selection of 
	 * frames, cels, layers, etc.
	 */
	public var range:Range;

	/**
	 * Active cel object in the app.
	 */
	public var activeCel:Cel;

	/**
	 * Active frame in the application. 
	 */
	public var activeFrame:Frame;

	/**
	 * Active Image in the application.
	 */
	public var activeImage:Image;

	/**
	 * Active Layer in the application. 
	 */
	public var activeLayer:Layer;

	/**
	 * Active sprite in the application.
	 */
	public var activeSprite:Sprite;

	/**
	 * Active tag in the application.
	 * This is located in the active frame.
	 */
	public var activeTag:Tag;

	/**
	 * Active tool; a tool selected in the tool bar.
	 */
	public var activeTool:Tool;

	/**
	 * Active brush; a brush selected in the context bar.
	 */
	public var activeBrush:Brush;

	/**
	 * Pixel color namespace; contains internal functions
	 * to handle color at the lowest level.
	 */
	public var pixelColor:PixelColor;
}