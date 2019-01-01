# GR-Sounds

 

Tested on Apple Watch Series 4 but should work on any generation

Clone and run, no dependencies required

Step by step instructions


	1.	Open Xcode
	2.	Click on “Clone an existing project”
	3.	Enter “https://github.com/marcus604/GR-Sounds.git”
	4.	Choose location and “Clone”
	5.	Click on top most directory in left pane
	6.	Under “Signing” select “Add Account”
	7.	Sign in with Apple ID
	8.	Go back to “Signing” and select “Team” and choose the Apple ID previously added
	9.	Under “Identity” change the bundle identifier to match the Apple ID being used. IE “com.emilio.GR-Sounds”
	10.	Ensuring provision profile is generated
	11.	Select “GR Watch Sounds” Target
	12.	Repeat steps 6-10
	13.	Select “GR Watch Sounds Extension” Target
	14.	Repeat steps 6-10
	15.	Open GR Watch Sounds Extension Info.plist
	16.	Expand “NSExtension” to show “WKAppBundleIdentifier” and change to match your naming scheme. IE “com.emilio.GR-Sounds.watchkitapp”
	17.	Repeat for “GR Watch Sounds” Info.plist. IE “com.emilio.GR-Sounds”
	18.	Choose “GR Watch Sounds” from upper left menu and run (play button)
	19.	Will need to trust developer app cert on phone. Settings->General->Profile & Device Management
	20.	Installing on watch will take several minutes
