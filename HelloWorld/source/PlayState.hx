package;

import flixel.FlxState;

class PlayState extends FlxState
{
	override public function create()
	{
		super.create();

		var helloWorldText = new flixel.text.FlxText(0, 0, 0, "Hello World", 64);
		helloWorldText.screenCenter();
		add(helloWorldText);
	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);
	}
}
