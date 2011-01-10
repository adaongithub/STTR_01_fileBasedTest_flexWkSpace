// ActionScript file
    
/*     import flash.utils.Timer;
    import flash.events.TimerEvent;
    import flash.display.Sprite;

    public class TimerExample extends Sprite {

        public function TimerExample() {
            var myTimer:Timer = new Timer(1000, 2);
            myTimer.addEventListener("timer", timerHandler);
            myTimer.start();
        }

        public function timerHandler(event:TimerEvent):void {
            trace("timerHandler: " + event);
        }
    } */
   
    
    public function saveApp():void {
      var file:File = File.desktopDirectory.resolvePath( taReqFilename.text ); 
      var jot:String = taEditor.text; 
      var stream:FileStream = new FileStream(); 
      stream.open( file, FileMode.WRITE ); 
      stream.writeMultiByte( jot, File.systemCharset ); 
      stream.close(); 
    }   
      
    public function closeApp():void {
      NativeApplication.nativeApplication.exit();
    }