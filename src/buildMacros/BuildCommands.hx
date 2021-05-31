package buildMacros;

#if macro
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

	for (command in keyboardCommandsNode.elements()) {
		// Create Build Field
		if (command.exists('command') && !buildFields.exists((field) -> {
			return field.name == command.get('command');
		})) {
			var buildField:Field = {
				name: command.get('command'),
				access: [APublic],
				kind: FFun({
					args: [],
					ret: (macro:Void)
				}),
				pos: Context.currentPos(),
				meta: [
					{
						name: "@:luaDotMethod",
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