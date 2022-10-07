package;

import flixel.FlxSprite;
import flixel.FlxState;
import flixel.graphics.FlxGraphic;
import flixel.graphics.atlas.FlxAtlas;
import flixel.graphics.frames.FlxAtlasFrames;
import flixel.text.FlxText;
import lime.app.Application;
#if desktop
import Discord.DiscordClient;
#end

typedef LeQuestionList =
{
	var questions:Array<TheFunnyQuestion>;
}

typedef TheFunnyQuestion =
{
	var number:Int;
	var question:String;
	var correctAnswerList:Null<Array<String>>;
	var punishment:Bool;
	var prize:Bool;
	var answers:Null<Array<String>>;
}

class QuizState extends FlxState
{
	var greetingText:FlxText;
	var theRobot:FlxSprite;
	var leFunnyQuestions:LeQuestionList;

	override public function create()
	{
		#if desktop
		DiscordClient.initialize();

		Application.current.onExit.add(function(exitCode)
		{
			DiscordClient.shutdown();
		});
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
