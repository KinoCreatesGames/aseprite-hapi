package buildMacros;

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
inline function toComplex(e:Expr) {
	return Context.toComplexType(Context.typeof(e));
}

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
						type: toComplex(macro {
							change: "",
							slot: 0
						})
					}

				case "ChangeColor":
					{
						name: "ChangeColor",
						type: toComplex(macro {
							target: "",
							change: ""
						})
					}

				case "Scroll":
					{
						name: "Scroll",
						type: toComplex(macro {
							direction: "",
							units: "",
							quantity: 0,
						})
					}
				case "MoveMask":
					{
						name: "MoveMask",
						type: toComplex(macro {
							target: "",
							direction: "",
							units: "",
							quantity: 0
						})
					}

				case "SymmetryMode":
					{
						name: "SymmetryMode",
						type: toComplex(macro {
							orientation: ""
						})
					}

				case "AutocropSprite":
					{
						name: "AutocropSprite",
						type: toComplex(macro {
							byGrid: true
						})
					}
				case "Screenshot":
					{
						name: "Screenshot",
						type: toComplex(macro {
							srgb: true,
							save: true
						})
					}
				case "LayerOpacity":
					{
						name: "LayerOpacity",
						type: toComplex(macro {
							opacity: 0
						})
					}
				case "Zoom":
					{
						name: "Zoom",
						type: toComplex(macro {
							action: ""
						})
					}
				case "SetInkType":
					{
						name: "SetInkType",
						type: toComplex(macro {
							type: ""
						})
					}
				case "SetColorSelector":
					{
						name: "SetColorSelector",
						type: toComplex(macro {
							type: ""
						})
					}
				case "AddColor":
					{
						name: "AddColor",
						type: toComplex(macro {
							source: ""
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