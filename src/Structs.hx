import constants.BrushPattern;
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

// Dialog Table Types
typedef DiaT = {
	title:String,
	?onClose:Dialog -> Void
}

typedef NumberT = {
	id:String,
	label:String,
	text:String,
	decimals:Int
}

typedef BrushT = {
	type:BrushT,
	size:Int,
	?angle:Int,
	?center:Point,
	?image:Image,
	?pattern:BrushPattern,
	?patternOrigin:Point,
}

typedef NewRowT = {
	/**
	 * Always True by default
	 */
	always:Bool
}

typedef ShadesT = {
	id:String,
	label:String,
	mode:String,
	colors:Array<Color>,
	onClick:DialogEvent -> Void
}

typedef ComboBoxT = {
	id:String,
	label:String,
	option:String,
	options:Array<String>
}

typedef EntryT = {
	id:String,
	label:String,
	text:String,
	focus:Bool
}

typedef LabelT = {
	id:String,
	label:String,
	text:String
}

typedef ModifyT = {
	id:String,
	visible:Bool,
	enabled:Bool,
	text:String
}

typedef ButtonT = {
	id:String,
	label:String,
	text:String,
	selected:Bool,
	focus:Bool,
	?onClick:Void -> Void
}

typedef ColorT = {
	id:String,
	label:String,
	color:Color
}

typedef ShowT = {
	/**
	 * Defaults to true
	 */
	wait:Bool,

	bounds:Rectangle
}

typedef SliderT = {
	id:String,
	label:String,
	min:Int,
	max:Int,
	value:Int
}

typedef FileT = {
	id:String,
	label:String,
	title:String,
	open:Bool,
	save:Bool,
	fileName:EitherType<String, Array<String>>,
	fileTypes:Array<String>,
	onChange:Void -> Void
}

typedef ImgSaveAsT = {
	filename:String,
	palette:Palette
}

typedef ImgResizeT = {
	width:Int,
	height:Int,
	?size:Size,
	?method:String,
	?pivot:Point
}

typedef RectT = {
	x:Int,
	y:Int,
	width:Int,
	height:Int
}

// Command Structs

typedef ChangeBrushT = {
	change:String,
	slot:Int
}

typedef ChangeColorT = {
	target:String,
	change:String
}

typedef ScrollT = {
	direction:String,
	units:String,
	quantity:Int
}

typedef MoveMaskT = {
	target:String,
	direction:String,
	units:String,
	quantity:Int
}

typedef LayerOpacityT = {
	opacity:Int
}