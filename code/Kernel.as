package  {
	import flash.display.MovieClip;
	import flash.events.*;
	import flash.utils.Timer;
	
	public class Kernel extends MovieClip {
		var CurrentScene = null;
		var EntityList:Array = new Array();

		public function Kernel() {
			// constructor code
			//trace("Oppai");
			
			addEventListener(Event.ADDED_TO_STAGE, StartGame);
		}
		
		function StartGame(e:Event):void {
			removeEventListener(Event.ADDED_TO_STAGE, StartGame);
			var period:Number  = 1000/40;
			var gameTimer:Timer = new Timer(period);
			
			gameTimer.addEventListener(TimerEvent.TIMER, Update);
			gameTimer.start();
			
			CurrentScene = new StartMenuScreen();
			NewScene();
		}
		
		function Update(e:Event):void {
			//trace("Pettanko");
			CurrentScene.Update();
			if (CurrentScene.NextScene != null && CurrentScene.Unloading != true) {
				UnloadContent();
			}
		}
		
		function NewScene():void {
			Initialise();
			LoadContent();
		}
		
		function Initialise():void {
			CurrentScene.EntityRef = EntityList;
			CurrentScene.Initialise(stage);
		}
		
		function LoadContent():void {
			CurrentScene.LoadContent(stage);
		}
		
		function UnloadContent():void {
			CurrentScene.UnloadContent(this);
		}

	}
	
}
