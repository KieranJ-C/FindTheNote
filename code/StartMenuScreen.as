package  {
	import flash.display.MovieClip;
	
	public class StartMenuScreen extends MovieClip{
		var EntityRef:Array = new Array();
		var NextScene = null;
		var Unloading:Boolean = false;
		
		public function StartMenuScreen() {
			// constructor code
		}
		
		function Initialise(Stage):void {
			var CenterX:Number = Stage.stageWidth / 2;
			var btn1 = new button("Start Game", CenterX, 100, this);
			btn1.SceneLink = new GameScene();
			EntityRef.push(btn1);
			var btn2 = new button("Options", CenterX, 250, this);
			btn2.SceneLink = new Options();
			EntityRef.push(btn2);
			var btn3 = new button("End Game", CenterX, 400, this);
			btn3.SceneLink = new ExitGame();
			EntityRef.push(btn3);
		}
		
		function LoadContent(Stage):void {
			for (var i:int = 0; i < EntityRef.length; i++) {
				Stage.addChild(EntityRef[i]);
			}
		}
		
		function UnloadContent(Caller:Object):void {
			Unloading = true;
			NextScene.EntityRef = EntityRef;
			for (var i:int = 0; i < EntityRef.length; i++) {
				Caller.stage.removeChild(Caller.EntityList[i]);
			}
			
			EntityRef.length = 0;
			Caller.CurrentScene = NextScene;
			Caller.NewScene();
		}
		
		function Update():void {
			
		}

	}
	
}
