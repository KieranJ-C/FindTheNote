package  {
	import flash.display.MovieClip;
	import flash.events.Event;
	import flash.events.MouseEvent;
	
	public class button extends MovieClip	{
		var Clicked:Boolean;
		var SceneLink:Object;
		var ParentMenu:Object;
		
		public function button(Text:String, X:int, Y:int, pMenu:Object) {
			// constructor code			
			addEventListener(MouseEvent.CLICK, ClickEvent);
			ParentMenu = pMenu;
			bText.text = Text;
			x = X;
			y = Y;
		}
		
		function ClickEvent(e:Event):void {
			ParentMenu.NextScene = SceneLink;
			//trace("Click");
		}

	}
	
}
