import objects.Point;
import App;

function main() {
	var point = new Point(10, 10);
	var color = App.pixelColor.rgba(255, 255, 0, 255);
	var test = App.params["k"];
	App.alert({
		title: 'Haxe Warning',
		text: 'This is a warning from Haxe',
	});
	App.command.ExportSpriteSheet();

	trace(test);
	trace(color);
	trace(point);
	trace(point.x, point.y);
}