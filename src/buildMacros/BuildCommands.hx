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
inline var FILE_PATH = 'aseprite-gui-link.txt';

#if macro
macro function buildAppComands():Array<Field> {
	var buildFields = Context.getBuildFields();
	trace('Running macro');
	// Load Aseprite XML Data
	var fileContents = File.getContent(FILE_PATH);
	var result = Http.requestUrl(fileContents);
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

			documentation = FileSystem.exists('res/${command.get('command')}.hx') ? File.getContent('res/${command.get('command')}.hx') : File.getContent('res/Blank.hx');
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