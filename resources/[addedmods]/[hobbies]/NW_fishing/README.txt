******************************
*** QB_fishing by DemiGod ***
******************************
discord: Demigod#0001

DM me or comment on the forum post with issues or suggestions

----------------------------------------------------------------------------------------------------------------------------------------

*************
** Install **
*************

1.) copy NW_Fishing folder into your resources folder

2.) add these items to your qb-core item list qb-core/shared.lua QBShared.Items
    ['fishingrod'] 				     = {['name'] = 'fishingrod', 			['label'] = 'Fishing Rod', 				['weight'] = 100, 		['type'] = 'item',		['image'] = 'fishingrod.png', 		  ['unique'] = false, 		['useable'] = true, 	['description'] = ''},
	['legalbait'] 			         = {['name'] = 'legalbait', 			['label'] = 'Fishing Bait', 			['weight'] = 100, 		['type'] = 'item',		['image'] = 'fishingbait.png', 	      ['unique'] = false, 		['useable'] = true, 	['description'] = ''},
	['illegalbait'] 		         = {['name'] = 'illegalbait', 	 	  	['label'] = 'Turtle Bait', 			    ['weight'] = 100, 		['type'] = 'item',		['image'] = 'turtlebait.png', 	      ['unique'] = false, 		['useable'] = true, 	['description'] = ''},
	['swordfish'] 				     = {['name'] = 'swordfish', 			['label'] = 'Sword Fish', 				['weight'] = 100, 		['type'] = 'item',		['image'] = 'swordfish.png', 		  ['unique'] = false, 		['useable'] = false, 	['description'] = ''},
	['tunafish'] 			         = {['name'] = 'tunafish', 			    ['label'] = 'Tuna Fish', 			    ['weight'] = 100, 		['type'] = 'item',		['image'] = 'tuna.png', 	          ['unique'] = false, 		['useable'] = false, 	['description'] = ''},
	['mahifish'] 		             = {['name'] = 'mahifish', 	 	  	    ['label'] = 'Mahi-Mahi', 			    ['weight'] = 100, 		['type'] = 'item',		['image'] = 'mahi.png', 	          ['unique'] = false, 		['useable'] = false, 	['description'] = ''},
	['halibut'] 			         = {['name'] = 'halibut', 		 	  	['label'] = 'Halibut', 				    ['weight'] = 100, 		['type'] = 'item',		['image'] = 'halibut.png', 		      ['unique'] = false, 		['useable'] = false, 	['description'] = ''},
	['redfish'] 				     = {['name'] = 'redfish', 		 	  	['label'] = 'Redfish', 					['weight'] = 100, 		['type'] = 'item',		['image'] = 'redfish.png', 		      ['unique'] = false, 	    ['useable'] = false, 	['description'] = ''},
	['bluefish'] 			         = {['name'] = 'bluefish', 		 	  	['label'] = 'Bluefish', 			    ['weight'] = 100, 		['type'] = 'item',		['image'] = 'bluefish.png', 		  ['unique'] = false, 		['useable'] = false, 	['description'] = ''},
	['salmon'] 			             = {['name'] = 'salmon', 		 	  	['label'] = 'Salmon', 				    ['weight'] = 100, 		['type'] = 'item',		['image'] = 'salmon.png', 	          ['unique'] = false, 		['useable'] = false, 	['description'] = ''},
	['perch'] 			             = {['name'] = 'perch', 	 	  	    ['label'] = 'Perch', 			        ['weight'] = 100, 		['type'] = 'item',		['image'] = 'perch.png', 	          ['unique'] = false, 		['useable'] = false, 	['description'] = ''},
	['bass'] 		                 = {['name'] = 'bass', 	 	  	        ['label'] = 'Bass', 			        ['weight'] = 100, 		['type'] = 'item',		['image'] = 'bass.png',               ['unique'] = false, 		['useable'] = false, 	['description'] = ''},
	['tilapia'] 			         = {['name'] = 'tilapia', 		 	  	['label'] = 'Tilapia', 				    ['weight'] = 100, 		['type'] = 'item',		['image'] = 'tilapia.png', 		      ['unique'] = false, 		['useable'] = false, 	['description'] = ''},
	['catfish'] 		             = {['name'] = 'catfish', 	 	        ['label'] = 'Catfish', 			        ['weight'] = 100, 		['type'] = 'item',		['image'] = 'catfish.png',            ['unique'] = false, 	    ['useable'] = false, 	['description'] = ''},
	['shad'] 			             = {['name'] = 'shad', 		 	  	    ['label'] = 'Shad', 				    ['weight'] = 100, 		['type'] = 'item',		['image'] = 'shad.png', 		      ['unique'] = false, 		['useable'] = false, 	['description'] = ''},
	['rainbowfish'] 		         = {['name'] = 'rainbowfish', 		 	['label'] = 'Rainbow Fish', 		    ['weight'] = 100, 		['type'] = 'item',		['image'] = 'rainbowtrout.png', 	  ['unique'] = false, 		['useable'] = false, 	['description'] = ''},
	['seaturtle'] 	                 = {['name'] = 'seaturtle', 		 	['label'] = 'Sea Turtle', 	            ['weight'] = 100, 		['type'] = 'item',		['image'] = 'seaturtle.png', 	      ['unique'] = false, 		['useable'] = true, 	['description'] = ''},
	['pufferfish'] 	                 = {['name'] = 'pufferfish', 		 	['label'] = 'Puffer Fish', 		        ['weight'] = 100, 		['type'] = 'item',		['image'] = 'Puffer.png',             ['unique'] = false, 		['useable'] = false, 	['description'] = ''},
	['piranha']			             = {['name'] = 'piranha',				['label'] = 'Piranha',			        ['weight'] = 100, 		['type'] = 'item',		['image'] = 'piranha.png',		      ['unique'] = false, 		['useable'] = false, 	['description'] = ''},
	['hammerhead']		             = {['name'] = 'hammerhead', 		 	['label'] = 'Hammerhead',		        ['weight'] = 600, 		['type'] = 'item',		['image'] = 'hammerhead.png',	      ['unique'] = false, 		['useable'] = false, 	['description'] = ''},
	['greatwhite']        	         = {['name'] = 'greatwhite', 		 	['label'] = 'Great White',		        ['weight'] = 600, 		['type'] = 'item',		['image'] = 'greatwhite.png',	      ['unique'] = false, 		['useable'] = false, 	['description'] = ''},

3.) add all pictures from img folder to the inventory pictures folder qb-inventory/html/images

4.) add "ensure NW_Fishing" to your server.cfg

5.) REQUIRES PolyZone Script to work https://github.com/mkafrin/PolyZone

6.) OPTIONAL qb-target Script(see Config.lua line: 4) https://github.com/BerkieBb/qb-target

7.) you will need to add the items to whatever "store" script you use so that people may purchase the legal bait and fishing rod

8.) Happy Fishing!