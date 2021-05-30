import constants.MouseButton;
import constants.Ink;
import objects.*;
import haxe.extern.EitherType;

typedef AlertMsgT = {
	title:String,
	text:EitherType<String, Array<String>>,
	?buttons:EitherType<String, Array<String>>
}

typedef UseToolT = {
	tool:String,
	?color:Color,
	?brush:Brush,
	?points:Array<Point>,
	?cel:Cel,
	?layer:Layer,
	?frame:Frame,
	?ink:InkT,
	?button:Btn,
	?opacity:Int,
	?contiguous:Bool,
	?tolerance:Int,
	?freehandAlgorithm:Int
}

typedef ColorSpaceT = {
	?fromFile:String,
	/**
	 * Defaults to true
	 */
	?sRGB:Bool
}

typedef SetPalleteT = {
	fromFile:String
}

typedef SpriteT = {
	fromFile:String,
	?oneFrame:Frame
}