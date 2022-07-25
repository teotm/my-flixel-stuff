package;

import flixel.FlxSprite;
import flixel.FlxState;
import flixel.graphics.FlxGraphic;
import flixel.graphics.atlas.FlxAtlas;
import flixel.graphics.frames.FlxAtlasFrames;
import flixel.text.FlxText;
#if desktop
import Discord.DiscordClient;
#end

class QuizState extends FlxState
{
	var greetingText:FlxText;
	var theRobot:FlxSprite;

	override public function create()
	{
		#if desktop
		// Updating Discord Rich Presence
		DiscordClient.changePresence("THE GAME IS STILL IN DEVELOPMENT!", null);
		#end

		greetingText = new FlxText(0, 0, "Welcome to the\nUndertale Quiz!", 24);
		add(greetingText);

		theRobot = new FlxSprite(100, 100).loadGraphic(Paths.image('baldi'));
		add(theRobot);

		super.create();
	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);
	}
}
