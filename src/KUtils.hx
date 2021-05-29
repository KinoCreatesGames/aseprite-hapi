import objects.Frame;

inline function isLastFrame(frame:Frame) {
	return frame.next == null;
}

inline function isFirstFrame(frame:Frame) {
	return frame.previous == null;
}