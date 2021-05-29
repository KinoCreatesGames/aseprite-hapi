package constants;

typedef Btn = Int;

/**
 * Mouse Buttons Constant
 */
@:native('MouseButton')
extern class MouseButton {
	public static var NONE:Btn;
	public static var LEFT:Btn;
	public static var RIGHT:Btn;
	public static var MIDDLE:Btn;
	public static var X1:Btn;
	public static var X2:Btn;
}