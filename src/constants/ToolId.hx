package constants;

/**
 * Tool IDs for different tools within the Aseprite.
 */
enum abstract ToolId(String) from String to String {
	var RECT_MARQUEE:String = 'rectangular_marquee';
	var ELIP_MARQUEE:String = 'elliptical_marquee';
	var LASSO:String = 'lasso';
	var POLY_LASSO:String = 'polygonal_lasso';
	var MAGIC_WAND:String = 'magic_wand';
	var PENCIL:String = 'pencil';
	var ERASER:String = 'eraser';
	var EYEDROPPER:String = 'eyedropper';
	var ZOOM:String = 'zoom';
	var HAND:String = 'hand';
	var MOVE:String = 'move';
	var SLICE:String = 'slice';
	var PAINT_BUCKET:String = 'paint_bucket';
	var GRADIENT:String = 'gradient';
	var LINE:String = 'line';
	var CURVE:String = 'curve';
	var RECT:String = 'rectangle';
	var FILL_RECT:String = 'filled_rectangle';
	var ELIP:String = 'ellipse';
	var FILL_ELIP:String = 'filled_ellipse';
	var CONTOUR:String = 'contour';
	var POLY:String = 'polygon';
	var BLUR:String = 'blur';
	var JUMBLE:String = 'jumble';
}