import objects.Sprite;
import objects.Tool;

/**
 * Parsed XML Data
 */
@:native('Preferences')
extern class Preferences {
	/**
	 * Returns the preference of the given tool.
	 * @return Tool
	 */
	@:luaDotMethod
	public function tool(tool:Tool):Tool;

	/**
	 * Returns the preferences of the given sprite.
	 * @return Sprite
	 */
	@:luaDotMethod
	public function document(sprite:Sprite):Sprite;
}