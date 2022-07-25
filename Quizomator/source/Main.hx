package;

import flixel.FlxGame;
import openfl.display.Sprite;
#if desktop
import Discord.DiscordClient;
#end

class Main extends Sprite
{
	public function new()
	{
		super();
		addChild(new FlxGame(0, 0, QuizState));
	}
}
