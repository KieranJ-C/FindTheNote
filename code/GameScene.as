package  {
	
	public class GameScene {
		var EntityRef:Array = new Array();
		var NextScene = null;
		var Unloading:Boolean = false;
		
		public function GameScene() {
			// constructor code
		}
		
		function Initialise(Stage):void {
			var CenterX:Number = Stage.stageWidth / 2;
			var btn1 = new button("Attack", CenterX, 100, this);
			EntityRef.push(btn1);
			var btn2 = new button("Back", CenterX, 600, this);
			btn2.SceneLink = new StartMenuScreen();
			EntityRef.push(btn2);
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
