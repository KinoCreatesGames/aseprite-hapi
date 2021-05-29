import objects.Point;
import objects.Selection;
import objects.Rectangle;

function main() {
	var point = new Point(10, 10);
	var selection = new Selection(new Rectangle(0, 0, 32, 32));
	selection.contains(0, 0);
	selection.contains(point);
	trace(point);
	trace(point.x, point.y);
}