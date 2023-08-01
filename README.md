## MAIN INFORMATION
This is a Modifyed Version Of Dog#7087 main Code https://github.com/BobyTheDev/dog-bodycam

My Version:
- Changes Look depending on if you are EMS, Police, Or jsut a Normal Civ.
- Clock is Set to Tick up to Sync With IRL Time For Log Reffrence.
- If A Player takes the body cam item from your Inventory it will auto Disable the Hud.

## INSTALL INSTRUCTIONS
1. Go to qb-core/shared/items.lua:

	Paste this
```lua
	["bodycam"] 		 			 = {["name"] = "bodycam",       	    	["label"] = "Body Camera",	 				["weight"] = 20, 		["type"] = "item", 		["image"] = "bodycam.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   ["combinable"] = nil,   ["description"] = "Body Camera"},
```

2. Configure the script to your liking in dog-bodycam/config.lua

3. Add dog-bodycam/img to your-inventoryscript/html/img

4. Add as your last resource in your server.cfg "ensure dog-bodycam"

5. You can also add it to your police armory so officers can grab it more easily!

6. You can also add it to your store so players can grab it more easily!

## PREVIEW

![My Image](https://media.discordapp.net/attachments/1114667516191580221/1135651556117721168/image3.png)
![My Image](https://media.discordapp.net/attachments/1114667516191580221/1135651556755251341/image2.png)
![My Image](https://media.discordapp.net/attachments/1114667516191580221/1135651557527007232/image.png)

## RESOURCE MONITOR
![My Image](https://cdn.discordapp.com/attachments/873289704739594270/1030819833144680458/unknown.png)

##