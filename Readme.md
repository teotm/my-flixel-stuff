Hi

I want to learn Flixel more and do some stuff outside of FNF. Yay!

I will post some funny games I can make if I make one.


As for now, there's only basic Hello World from HaxeFlixel.

About to develop: [Quizomator's Undertale Quiz](https://gamejolt.com/games/undertale_quiz_scratch/666245) Haxe port.

I also plan to add Chess too.

I plan to add more games later :).
### Setup/Installation
1. [Install Haxe](https://haxe.org/download)
2. [Install git](https://git-scm.com/downloads) (read the instructions in the website)
3. Install these necessary Haxe Libraries, to compile all games possible
	```cmd
	haxelib install lime 7.9.0
	haxelib install openfl
	haxelib install flixel
	haxelib run lime setup
	haxelib run lime setup flixel
	haxelib install flixel-tools
	haxelib run flixel-tools setup
	haxelib install flixel-addons
	haxelib install flixel-ui
	haxelib git discord_rpc https://github.com/Aidan63/linc_discord-rpc
	haxelib install kha 16.1.2
	```

Worth mentioning before compiling: 

Find these lines in [Project.xml](Project.xml#L8)
```xml
<!-- <define name="HELLO_WORLD_FLIXEL"/> -->
<!-- <define name="QUIZOMATOR"/> -->
<define name="CHESS"/> <!-- They ain't 100% mine -->
```
and replace them with these ones:
```xml
<!-- <define name="HELLO_WORLD_FLIXEL"/> -->
<define name="QUIZOMATOR"/>
<!-- <define name="CHESS"/> -->
```