package com.kinnexxus.components
{
	import flash.utils.Timer;
    import flash.events.TimerEvent;
	import flash.display.Sprite;

	public class PollingTimer extends Sprite
	{
		public function PollingTimer()
		{
			var myTimer:Timer;
			
			super();
			myTimer = new Timer(1000, 2);
            myTimer.addEventListener("timer", timerHandler);
            myTimer.start();
		}
		
		public function timerHandler(event:TimerEvent):void {
            trace("timerHandler: " + event);
        }

		
	}
}