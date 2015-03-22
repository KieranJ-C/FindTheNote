# FindTheNote
Red Bearded Panda's Game Development

Each screen of the game e.g. Menu, Level, Options, Leaderboards etc. is a different "scene".
Each of these scenes are created in a different class file: <name>.as

**Each scene requires the functions:**  
Initialise(Stage)  
LoadContent(Stage)  
UnloadContent(Caller:Object)  
function Update()  

**Each scene requires the data members:**  
var EntityRef:Array = new Array();  
var NextScene = null;  
var Unloading:Boolean = false;  

**Intialise**  
This is where the content for the screen will be created.  

**LoadContent**  
This is where created content will be displayed onto the scene.  

**UnloadContent**  
This is run when changing scenes to remove content from the scene.  

**Update**  
A constant update loop for scene behaviours.  
