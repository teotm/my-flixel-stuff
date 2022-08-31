package;

import flixel.FlxG;
import flixel.graphics.frames.FlxAtlasFrames;
import openfl.utils.AssetType;
import openfl.utils.Assets as OpenFlAssets;

using StringTools;

class Paths
{
	static var currentLevel:String;

	static public function setCurrentLevel(name:String)
	{
		currentLevel = name.toLowerCase();
	}

	static function getPath(file:String)
	{
		return 'assets/$file';
	}

	static public function getLibraryPath(file:String, library = "default")
	{
		return if (library == "default") getPreloadPath(file); else getLibraryPathForce(file, library);
	}

	inline static function getLibraryPathForce(file:String, library:String)
	{
		return '$library:assets/$library/$file';
	}

	inline static function getPreloadPath(file:String)
	{
		return 'assets/$file';
	}

	inline static public function image(key:String)
	{
		return getPath('images/$key.png');
	}

	inline static public function xml(key:String)
	{
		return getPath('data/$key.xml');
	}

	inline static public function wavSound(key:String)
	{
		return getPath('sounds/$key.wav');
	}
}
