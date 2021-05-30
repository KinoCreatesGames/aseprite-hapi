import objects.Point;
import objects.Selection;
import objects.Rectangle;
import App;

function main() {
	var point = new Point(10, 10);
	var selection = new Selection(new Rectangle(0, 0, 32, 32));
	selection.contains(0, 0);
	selection.contains(point);
	var color = App.pixelColor.graya(255, 255);
	var test = App.params["k"];
	App.alert({title: 'Warning', text: 'Save Changes?'});
	trace(color);
	trace(point);
	trace(point.x, point.y);
}