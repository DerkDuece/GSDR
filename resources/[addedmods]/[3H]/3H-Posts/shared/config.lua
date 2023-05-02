Config = {  
	-- Which language do you want to use? For changing it to any other language check out the locales folder!
	Lan = 'en', 
	
	-- What is the name of your qb-core folder? Only change it if you changed the name of the folder
	Core = 'qb-core', 
	
	-- Which notify system do you want to use 'qb', 'okok', 'ox' 
	Notify = 'qb',  
	
	-- Which menu you want to use 'qb' or 'ox'?
	Menu = 'qb',  
	
	-- Which input do you want to use 'qb' or 'ox'?
	Input = 'qb', 
	
 	-- Does the player require a phone to be able to post?
	PhoneCheck = true, 
	
	-- What is the name of the phone item on your server? | Ignore this if PhoneCheck = false
	PhoneItem = "phone", 

	-- Do you want the player who is dead or is in the last stand should not to be able to post?
	HealthCheck = true, 

	-- Do you want admins to overwatch all the player's posts?
	GetLogs = true,
	
	-- Do you want to enable the /post command?
	EnablePostCmd = true,

	Cmd = {
		-- Recommended not to change until there is the same command already present in your server
		Post = 'post', --  What should be the command that lets you post ad/tweet/insta posts?
		Advert = 'ad', -- What should be the arg (command) that lets you post an ad?
		Tweet = 'tweet', -- What should be the arg (command) that lets you post an tweet?
		Insta = 'insta', -- What should be arg (command) that lets you post an insta post?
	},
	
	YellowPages = {
		
		Personal = {
			-- Do you want the personal ad's option to be shown up in the Yellow Pages menu?
			Enable = true,
		
			-- How much money should be deducted if a player posts a personal ad?
			-- Set PostCost = 'free' if you don't want any money to get deducted for a personal ad! 
			PostCost = 1000,

		},
		
		Business = {
			-- Do you want the business ad's option to be shown up in the Yellow Pages menu?
			Enable = true,
		
			-- Which are the jobs that are allowed to post ads as a business? 
			Jobs = {'cardealer', 'customs', 'realestate'},
		
			-- How much money should be deducted if a player posts a business ad?
			-- Set PostCost = 'free' if you don't want any money to get deducted for a business ad! 
			PostCost = 5000,
	
			-- Do you want to allow the business post to be able to ping a discord role? Can be used as an extra notify
			EnablePing = true,

			-- Which role did you want to be pinged when someone posts a business ad? Ignore this if you set EnablePing = false
			-- If you want to tag everyone role set RoleId = '@everyone'else just put RoleId = '2829231210' (Role ID)
			RoleId = '@everyone',

			-- Do you want the player's to be able to add their custom thumbnail for the business post?
			CustomThumbnail = true, 

			-- Do you want the business post to be posted with their job's label in their title? 
			CustomTitle = true,

		},
	},
}

Lang = {}
