package  {
	import flash.system.fscommand;
	
	public class ExitGame {
		var EntityRef:Array = new Array();
		var NextScene = null;
		var Unloading:Boolean = false;

		public function ExitGame() {
			// constructor code
		}
		
		function Initialise(Stage):void {
			
		}
		
		function LoadContent(Stage):void {
			
		}

		function UnloadContent(Caller:Object):void {
		
		}
		
		function Update():void {
			fscommand("quit");
		}

	}
	
}
