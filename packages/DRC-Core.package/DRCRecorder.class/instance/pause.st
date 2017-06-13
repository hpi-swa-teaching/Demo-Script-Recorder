commands
pause

self pauseIn: self currentWorld.
self pauseTotalTime:  self pauseTotalTime + (Time millisecondClockValue - self pauseStartTime).
"
	self togglePaused.
"