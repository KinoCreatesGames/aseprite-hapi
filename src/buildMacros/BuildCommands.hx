package buildMacros;

import Structs.ZoomT;
import sys.FileSystem;
#if macro
import Structs.ChangeColorT;
import Structs.ChangeBrushT;
import haxe.macro.ExprTools;
import haxe.macro.Expr.Field;
import haxe.macro.Context;
import haxe.macro.Expr;
import haxe.macro.Type;

using haxe.macro.Tools;
using Lambda;
using StringTools;

import sys.Http;
import sys.io.File;
#end

/**
 * Loads the Aseprite raw xml and parses it for
 * creating commands for the command class.
 * @return Array<Field>
 */
inline var LINK = 'https://raw.githubusercontent.com/aseprite/aseprite/main/data/gui.xml';

#if macro
var Docmap = [
	'AddColor' => '/**
	 * Add color within Aseprite.
	 * See the parameters and possible values below.
	 * @param source fg(foreground), bg(background)
	 */',
	'AutocropSprite' => '/**
 * Automatically crops the sprite.
 * Possible values below.
 * @param AutocropSprite true/false
 */
',
	'Blank' => '',
	'ChangeBrush' => '/**
 * Changes the brush either to custom or incrementing/decrementing size.
 * Possible values below for parameters.
 * @param change increment-size, decrement-size, custom (for custom brushes), increment-angle,decrement-angle
 * @param slot changes your custom brush slot, 1 for your first brush.
 */',
	'ChangeColor' => '/**
 * Changes the color from foreground to background.
 * Possible values below.
 * @param change increment-index,decrement-index
 * @param target  foreground, background
 */',
	'LayerOpacity' => '/**
 * 
 * This allows you to change the layer opacity.
 * See the parameters below.
 * @param Opacity 0 - 255
 */
',
	'MoveMask' => '/**
 * Possible values below.
 * Allows you to move the mask within Aseprite.
 * @param target content, boundaries
 * @param direction left, right, up, down
 * @param units pixel, tile-width, tile-height
 * @param quantity number
 */
',
	'Screenshot' => '/**
 * 
 * Saves a screenshot to the folder if designated via save.
 * Possible values below.
 * @param srgb true/false
 * @param save true/false
 */
',
	'Scroll' => '/**
 * Scrolls in a specific direction.
 * @param direction left, right, up, down
 * @param units zoomed-pixel, zoomed-tile-width, zoomed-tile-height
 * @param quantity Number of units to scroll by i.e 1
 */',
	'SelectTile' => '/**
 * Select a specific tile in aseprite in different modes.
 * See below for the possible parameters.
 * @param mode add,subtract, intersect
 */
',
	'SetColorSelector' => '/**
 * 
 * Set the color selector type within Aseprite.
 * See the parameters below.
 * @param type spectrum, rgb-wheel, ryb-wheel, normal-map-wheel, tint-shade-tone
 */
',
	'SetInkType' => '/**
 * Sets the type of the ink within the game.
 * See the parameters below.
 * @param type simple, alpha-compositing, copy-color, lock-alpha, shading
 */
',
	'SymmetryMode' => '/**
 * Symmetry mode when working on the sprite.
 * For example, vertical orientation for drawing 
 * pixels on both halves of the canvas.
 * @param orientation vertical, horizontal
 */
',
	'Zoom' => '/**
 * Zoom allows you to zoom in on the sprite within the Aseprite.
 * See the parameter below.
 * @param action in,out
 */'
];

macro function buildAppComands():Array<Field> {
	var buildFields = Context.getBuildFields();

	// Load Aseprite XML Data
	var result = Http.requestUrl(LINK);
	var xmlContent = Xml.parse(result);
	var keyboardCommandsNode = xmlContent.firstElement()
		.firstElement()
		.firstElement();

	// TODO: Differentiate between different types
	for (command in keyboardCommandsNode.elements()) {
		// Create Build Field
		if (command.exists('command') && !buildFields.exists((field) -> {
			return field.name == command.get('command');
		})) {
			// Switch Case to determine struct to use as args
			var args = [];
			var documentation = null;
			var commandDoc = Docmap.get(command.get('command'));
			var blankDoc = Docmap.get('Blank');
			documentation = commandDoc != null ? commandDoc : blankDoc;
			var arg:FunctionArg = switch (command.get('command')) {
				case "ChangeBrush":
					{
						name: "ChangeBrush",
						type: (macro:{
							?change:String,
							?slot:Int
						})
					}

				case "ChangeColor":
					{
						name: "ChangeColor",
						type: (macro:{
							target:String,
							change:String
						})
					}

				case "Scroll":
					{
						name: "Scroll",
						type: (macro:{
							direction:String,
							units:String,
							quantity:Int,
						})
					}
				case "MoveMask":
					{
						name: "MoveMask",
						type: (macro:{
							target:String,
							direction:String,
							units:String,
							quantity:Int
						})
					}

				case "SymmetryMode":
					{
						name: "SymmetryMode",
						type: (macro:{
							orientation:String
						})
					}

				case "AutocropSprite":
					{
						name: "AutocropSprite",
						type: (macro:{
							byGrid:Bool
						})
					}
				case "Screenshot":
					{
						name: "Screenshot",
						type: (macro:{
							srgb:Bool,
							?save:Bool
						})
					}
				case "LayerOpacity":
					{
						name: "LayerOpacity",
						type: macro:{
							opacity:Int
						}
					}
				case "Zoom":
					{
						name: "Zoom",
						type: (macro:{
							?action:String,

							?percentage:Int
						})
					}
				case "SetInkType":
					{
						name: "SetInkType",
						type: (macro:{
							type:String
						})
					}
				case "SetColorSelector":
					{
						name: "SetColorSelector",
						type: (macro:{
							type:String
						})
					}
				case "AddColor":
					{
						name: "AddColor",
						type: (macro:{
							source:String
						})
					}
				case "SelectTile":
					{
						name: "SelectTile",
						type: (macro:{
							mode:String
						})
					}
				case _:
					null;
			}
			if (arg != null) {
				args.push(arg);
			}
			var buildField:Field = {
				name: command.get('command'),
				doc: documentation,
				access: [APublic],
				kind: FFun({
					args: args,
					ret: (macro:Void)
				}),
				pos: Context.currentPos(),
				meta: [
					{
						name: ":luaDotMethod",
						pos: Context.currentPos()
					}
				]
			}
			buildFields.push(buildField);
		}
	}

	return buildFields;
}
#end