------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
This is my first major script and release. I have done snippets and small shit and given away to the community. 
This was all possible because of creators and devs in Project Sloth, JixelTay, and Samuel's development. I used the globalstates and spawning of props from Samuel's christmas script (I asked permission before release) tebex link here for their stuff: https://fivem.samueldev.shop/
Project Sloth has been a pioneer of how the fivem community should be. Helping the community by creating free, easy to install, and fun scripts. Along with allowing the community to publish free scripts. 
and Jimathy and Tay are the sole reason I learned how to code. When I started back in august, I had no idea what I was doing and their scripts are easy to read, edit, and see how things actually function. 
without those scripts I would forget 1000x more commas and not understand how code communicates. If you don't have any of their scripts. you are missing out. tebex: https://jimathy666.tebex.io/

I am not affiliated with any of these creators above but I have to give a shout out to the community when I can. 

I want to also give thanks to my team at Hyperlife RP who helped me make this script. From helping with ideas and to keep me from bashing my head against the table. There was a point while writing this I was in a cross country move and only had a macbook that couldnt even load
fivem and I would write code for it, send it to them to upload and have them test it. Tell me its not working and troubleshoot for me. This is going to be a first release of many because of this amazing team. 

if you have any issues, you can come to my discord and throw a ticket in. I hope i can get it fixed ASAP Rocky
https://discord.gg/TwBaVECdGM
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Dependacies 
[1] qbcore
[2] lj or qb inventory
[3] ps-buffs
[4] ps-ui
[5] qb-target
[6] polyzone
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------


How to install like a fuckin bosssssss
1) upload the script
2) add items
3) change all the locations in the config. it will automatically create the box -2 and +2 on the z in the target.lua so you dont have to do all that! Every city should have different locations to fit well with your city
4) upload images
5) add items here	
 ```
 ----- md-coke
 ["coke"] 		 	 	 	     = {["name"] = "coke",           				["label"] = "Raw Cocaine", 				["weight"] = 1000,		["type"] = "item", 		["image"] = "coke.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,    ["description"] = "Processed cocaine"},
 ["coca_leaf"] 		 	 	 	 = {["name"] = "coca_leaf",           			["label"] = "Cocaine leaves",	 		["weight"] = 1500,		["type"] = "item", 		["image"] = "coca_leaf.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,    ["description"] = "Cocaine leaves that must be processed !"},
 ["poppyresin"] 		 	 	 = {["name"] = "poppyresin",           			["label"] = "Poppy resin",	 			["weight"] = 2000, 		["type"] = "item", 		["image"] = "poppyresin.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,    ["description"] = "It sticks to your fingers when you handle it."},
 ["heroin"] 		 	 	 	 = {["name"] = "heroin",           				["label"] = "Weak Heroin Powder",	 				["weight"] = 500, 		["type"] = "item", 		["image"] = "loosecoke.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,     ["description"] = "Really addictive depressant..."},
 ["bakingsoda"] 		 	 	 = {["name"] = "bakingsoda",           		    ["label"] = "Baking Soda",	 		    ["weight"] = 300, 		["type"] = "item", 		["image"] = "bakingsoda.png", 		    ["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,     ["description"] = "Household Baking Soda!"},
 ['loosecoke'] 			 		 = {['name'] = 'loosecoke', 			  		['label'] = 'loose coke', 				['weight'] = 100, 		['type'] = 'item', 		['image'] = 'loosecoke.png', 			['unique'] = false, 	['useable'] = false, 	['shouldClose'] = true,	   ['combinable'] = nil, 					 ['description'] = 'Paper made specifically for encasing and smoking tobacco or cannabis.'},
['loosecokestagetwo'] 			 = {['name'] = 'loosecokestagetwo', 			  		['label'] = 'More Pure Loose Coke', 			['weight'] = 100, 		['type'] = 'item', 		['image'] = 'loosecokestagetwo.png', 			['unique'] = false, 	['useable'] = false, 	['shouldClose'] = true,	   ['combinable'] = nil, 					 ['description'] = ''},
['loosecokestagethree'] 		 = {['name'] = 'loosecokestagethree', 			  		['label'] = 'Purest Loose Coke', 				['weight'] = 100, 		['type'] = 'item', 		['image'] = 'loosecokestagethree.png', 			['unique'] = false, 	['useable'] = false, 	['shouldClose'] = true,	   ['combinable'] = nil, 					 ['description'] = ''},
['cokebaggystagetwo'] 			 = {['name'] = 'cokebaggystagetwo', 			  	  	['label'] = 'Bag of Good Coke', 				['weight'] = 100, 		['type'] = 'item', 		['image'] = 'cocaine_baggystagetwo.png', 		['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = 'To get happy real quick'},
['cokebaggystagethree'] 		 = {['name'] = 'cokebaggystagethree', 			  	  	['label'] = 'Bag of Great Coke', 				['weight'] = 100, 		['type'] = 'item', 		['image'] = 'cocaine_baggystagethree.png', 		['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = 'To get happy real quick'},
["cokestagetwo"] 		 	 	 = {["name"] = "cokestagetwo",           				["label"] = "Better Raw Cocaine", 				["weight"] = 100,		["type"] = "item", 		["image"] = "cokestagetwo.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["expire"] = 90,  ["description"] = "Processed cocaine"},
["cokestagethree"] 		 	 	 = {["name"] = "cokestagethree",           				["label"] = "Best Raw Cocaine", 				["weight"] = 100,		["type"] = "item", 		["image"] = "cokestagethree.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["expire"] = 90,  ["description"] = "Processed cocaine"},
 
 
 ----md-lsd
 ['lysergic_acid'] 			 	 = {['name'] = 'lysergic_acid', 			  		['label'] = 'Lysergic Acid', 				['weight'] = 100, 		['type'] = 'item', 		['image'] = 'lysergic_acid.png', 			['unique'] = false, 	['useable'] = false, 	['shouldClose'] = true,	   ['combinable'] = nil, 					 ['description'] = ''},
['diethylamide'] 			 	 = {['name'] = 'diethylamide', 			  			['label'] = 'Diethylamide', 				['weight'] = 100, 		['type'] = 'item', 		['image'] = 'diethylamide.png', 			['unique'] = false, 	['useable'] = false, 	['shouldClose'] = true,	   ['combinable'] = nil, 					 ['description'] = ''},
['lsd_one_vial'] 			 	 = {['name'] = 'lsd_one_vial', 			  			['label'] = 'Weakest LSD Vial', 			['weight'] = 100, 		['type'] = 'item', 		['image'] = 'lsd_one_vial.png', 			['unique'] = false, 	['useable'] = false, 	['shouldClose'] = true,	   ['combinable'] = nil, 					 ['description'] = ''},
['lsd_vial_two'] 			 	 = {['name'] = 'lsd_vial_two', 			  			['label'] = 'Slightly Better LSD Vial', 	['weight'] = 100, 		['type'] = 'item', 		['image'] = 'lsd_vial_two.png', 			['unique'] = false, 	['useable'] = false, 	['shouldClose'] = true,	   ['combinable'] = nil, 					 ['description'] = ''},
['lsd_vial_three'] 			 	 = {['name'] = 'lsd_vial_three', 			  		['label'] = 'Good LSD', 					['weight'] = 100, 		['type'] = 'item', 		['image'] = 'lsd_vial_three.png', 			['unique'] = false, 	['useable'] = false, 	['shouldClose'] = true,	   ['combinable'] = nil, 					 ['description'] = ''},
['lsd_vial_four'] 			 	 = {['name'] = 'lsd_vial_four', 			  		['label'] = 'Really Good LSD', 				['weight'] = 100, 		['type'] = 'item', 		['image'] = 'lsd_vial_four.png', 			['unique'] = false, 	['useable'] = false, 	['shouldClose'] = true,	   ['combinable'] = nil, 					 ['description'] = ''},
['lsd_vial_five'] 			 	 = {['name'] = 'lsd_vial_five', 			  		['label'] = 'Amazing LSD', 					['weight'] = 100, 		['type'] = 'item', 		['image'] = 'lsd_vial_five.png', 			['unique'] = false, 	['useable'] = false, 	['shouldClose'] = true,	   ['combinable'] = nil, 					 ['description'] = ''},
['lsd_vial_six'] 			 	 = {['name'] = 'lsd_vial_six', 			  			['label'] = 'Purest LSD', 					['weight'] = 100, 		['type'] = 'item', 		['image'] = 'lsd_vial_six.png', 			['unique'] = false, 	['useable'] = false, 	['shouldClose'] = true,	   ['combinable'] = nil, 					 ['description'] = ''},
['tab_paper'] 			 		 = {['name'] = 'tab_paper', 			  			['label'] = 'Tab Paper', 					['weight'] = 100, 		['type'] = 'item', 		['image'] = 'tab_paper.png', 			['unique'] = false, 	['useable'] = false, 	['shouldClose'] = true,	   ['combinable'] = nil, 					 ['description'] = ''},
['smileyfacesheet'] 			 = {['name'] = 'smileyfacesheet', 			  		['label'] = 'Smiley Face Sheet', 			['weight'] = 100, 		['type'] = 'item', 		['image'] = 'smileysheet.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil, 					 ['description'] = ''},
['wildcherrysheet'] 			 = {['name'] = 'wildcherrysheet', 			  		['label'] = 'Wild Cherry Sheet', 			['weight'] = 100, 		['type'] = 'item', 		['image'] = 'wildcherrysheet.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil, 					 ['description'] = ''},
['yinyangsheet'] 			     = {['name'] = 'yinyangsheet', 			  			['label'] = 'Yin and Yang Sheet', 			['weight'] = 100, 		['type'] = 'item', 		['image'] = 'yinyangsheet.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil, 					 ['description'] = ''},
['pineapplesheet'] 			 	 = {['name'] = 'pineapplesheet', 			  		['label'] = 'Pineapple Sheet', 				['weight'] = 100, 		['type'] = 'item', 		['image'] = 'pineapplesheet.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil, 					 ['description'] = ''},
['bartsheet'] 			 		 = {['name'] = 'bartsheet', 			  			['label'] = 'Bart Simpson Sheet', 			['weight'] = 100, 		['type'] = 'item', 		['image'] = 'bartsheet.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil, 					 ['description'] = ''},
['gratefuldeadsheet'] 			 = {['name'] = 'gratefuldeadsheet', 			  	['label'] = 'Grateful Dead Sheet', 			['weight'] = 100, 		['type'] = 'item', 		['image'] = 'gratefuldeadsheet.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil, 					 ['description'] = ''},
['smiley_tabs'] 			     = {['name'] = 'smiley_tabs', 			  			['label'] = 'Smiley tabs', 					['weight'] = 100, 		['type'] = 'item', 		['image'] = 'smiley_tabs.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil, 					 ['description'] = ''},
['wildcherry_tabs'] 			 = {['name'] = 'wildcherry_tabs', 			  		['label'] = 'Wild Cherry Tabs', 			['weight'] = 100, 		['type'] = 'item', 		['image'] = 'wildcherry_tabs.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil, 					 ['description'] = ''},
['yinyang_tabs'] 			     = {['name'] = 'yinyang_tabs', 			  			['label'] = 'Yin and Yang Tabs', 			['weight'] = 100, 		['type'] = 'item', 		['image'] = 'yinyang_tabs.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil, 					 ['description'] = ''},
['pineapple_tabs'] 			     = {['name'] = 'pineapple_tabs', 			  		['label'] = 'Pineapple Tabs', 				['weight'] = 100, 		['type'] = 'item', 		['image'] = 'pineapple_tabs.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil, 					 ['description'] = ''},
['bart_tabs'] 			 		 = {['name'] = 'bart_tabs', 			  			['label'] = 'Bart Simpson Tabs', 			['weight'] = 100, 		['type'] = 'item', 		['image'] = 'bart_tabs.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil, 					 ['description'] = ''},
['gratefuldead_tabs'] 			 = {['name'] = 'gratefuldead_tabs', 			  	['label'] = 'Grateful Dead Tabs', 			['weight'] = 100, 		['type'] = 'item', 		['image'] = 'gratefuldead_tabs.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil, 					 ['description'] = 'DONT USE IF YOU GET SEIZURES'},
['lsdlabkit'] 			 		= {['name'] = 'lsdlabkit', 			  				['label'] = 'LSD Mixing Table', 			['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'labkit.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil, 					 ['description'] = ''},
['dirtylsdlabkit'] 			 	= {['name'] = 'dirtylsdlabkit', 			  		['label'] = 'Dirty LSD Mixing Table', 			['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'labkit_dirty.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil, 					 ['description'] = ''},


---- md heroin
["heroinstagetwo"] 		 	 	 	 = {["name"] = "heroinstagetwo",           			["label"] = "Better Heroin",	 		["weight"] = 250, 		["type"] = "item", 		["image"] = "heroinpowderstagetwo.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,     ["description"] = ""},
["heroinstagethree"] 		 	 	 = {["name"] = "heroinstagethree",           		["label"] = "Best Heroin",	 			["weight"] = 250, 		["type"] = "item", 		["image"] = "heroinpowderstagethree.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,     ["description"] = ""},
["heroincut"] 		 	 	 		 = {["name"] = "heroincut",           				["label"] = "Cut Heroin",	 			["weight"] = 250, 		["type"] = "item", 		["image"] = "heroinpowder.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   	     ["description"] = ""},
["heroincutstagetwo"] 		 	 	 = {["name"] = "heroincutstagetwo",           		["label"] = "Better Cut Heroin",	 	["weight"] = 250, 		["type"] = "item", 		["image"] = "heroinpowderstagethree.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   		 ["description"] = ""},
["heroincutstagethree"] 		 	 = {["name"] = "heroincutstagethree",           	["label"] = "Best Cut Heroin",	 		["weight"] = 250, 		["type"] = "item", 		["image"] = "heroinpowderstagetwo.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,  	     ["description"] = ""},
["heroinlabkit"] 		 	 	 	 = {["name"] = "heroinlabkit",           			["label"] = "Heroin Lab Kit",	 		["weight"] = 250, 		["type"] = "item", 		["image"] = "labkit.png", 				["unique"] = false, 	["useable"] = true, 	["shouldClose"] = false,   ["combinable"] = nil,   		 ["description"] = ""},
["dirtyheroinlabkit"] 		 	 	 = {["name"] = "dirtyheroinlabkit",           		["label"] = "Dirty heroin Lab Kit",	 	["weight"] = 250, 		["type"] = "item", 		["image"] = "labkit_dirty.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = false,   ["combinable"] = nil,   		 ["description"] = ""},
["heroinvial"] 		 	 	 		 = {["name"] = "heroinvial",           				["label"] = "Vial Of Heroin",	 		["weight"] = 250, 		["type"] = "item", 		["image"] = "heroin.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,     ["description"] = ""},
["heroinvialstagetwo"] 		 	 	 = {["name"] = "heroinvialstagetwo",           		["label"] = "Better Vial of Heroin",	["weight"] = 250, 		["type"] = "item", 		["image"] = "heroinstagetwo.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,     ["description"] = ""},
["heroinvialstagethree"] 		 	 = {["name"] = "heroinvialstagethree",           	["label"] = "Best Vial Of Heroin",	 	["weight"] = 250, 		["type"] = "item", 		["image"] = "heroinstagethree.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,     ["description"] = ""},
["heroin_ready"] 		 	 	 	 = {["name"] = "heroin_ready",           			["label"] = "Syringe Of Heroin",	 	["weight"] = 250, 		["type"] = "item", 		["image"] = "heroin_ready.png", 				["unique"] = false, 	["useable"] = true, 	["shouldClose"] = false,   ["combinable"] = nil,   		 ["description"] = ""},
["heroin_readystagetwo"] 		 	 = {["name"] = "heroin_readystagetwo",           	["label"] = "Syringe Of Better Heroin",	 ["weight"] = 250, 		["type"] = "item", 		["image"] = "heroin_readystagetwo.png", 				["unique"] = false, 	["useable"] = true, 	["shouldClose"] = false,   ["combinable"] = nil,         ["description"] = ""},
["heroin_readystagethree"] 		 	 = {["name"] = "heroin_readystagethree",           	["label"] = "Syringe Of Best Heroin",	 ["weight"] = 250, 		["type"] = "item", 		["image"] = "heroin_readystagethree.png", 				["unique"] = false, 	["useable"] = true, 	["shouldClose"] = false,   ["combinable"] = nil,         ["description"] = ""},
["emptyvial"] 				     = {["name"] = "emptyvial", 			    	["label"] = "empty vial", 			    ['weight'] = 100, 		["type"] = "item", 		["image"] = "emptyvial.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ['combinable'] = nil,					 ["description"] = ""},
["needle"] 		 					 = {["name"] = "needle",           					["label"] = "Syringe",	 				["weight"] = 250, 		["type"] = "item", 		["image"] = "syringe.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,         ["description"] = ""},


---- md crack
["crackrock"] 		 	 	 		 = {["name"] = "crackrock",           				["label"] = "Crack Rock",	 			["weight"] = 250, 		["type"] = "item", 		["image"] = "crackrock1.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,     ["description"] = ""},
["crackrockstagetwo"] 		 	 	 = {["name"] = "crackrockstagetwo",           		["label"] = "Better Crack Rock",	 	["weight"] = 250, 		["type"] = "item", 		["image"] = "crackrock2.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,     ["description"] = ""},
["crackrockstagethree"] 		 	 = {["name"] = "crackrockstagethree",           	["label"] = "Best Crack Rock",	 		["weight"] = 250, 		["type"] = "item", 		["image"] = "crackrock3.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   	     ["description"] = ""},
["baggedcracked"] 		 	 	 	 = {["name"] = "baggedcracked",           			["label"] = "Bag Of Crack",	 			["weight"] = 250, 		["type"] = "item", 		["image"] = "crackbag1.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   		 ["description"] = ""},
["baggedcrackedstagetwo"] 		 	 = {["name"] = "baggedcrackedstagetwo",           	["label"] = "Better Bag Of Crack",	 	["weight"] = 250, 		["type"] = "item", 		["image"] = "crackbag2.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,  	     ["description"] = ""},
["baggedcrackedstagethree"] 		 = {["name"] = "baggedcrackedstagethree",           ["label"] = "Best Bag Of Crack",	 	["weight"] = 250, 		["type"] = "item", 		["image"] = "crackbag3.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,  	     ["description"] = ""},
---- shrooms 
["shrooms"] 		 = {["name"] = "shrooms",           ["label"] = "Shrooms",	 	["weight"] = 250, 		["type"] = "item", 		["image"] = "shrooms.png", 				["unique"] = false, 	["useable"] = true, 	["shouldClose"] = false,   ["combinable"] = nil,  	     ["description"] = ""},

-- pharma
['prescription_pad'] 		        	= {['name'] = 'prescription_pad', 			    ['label'] = 'Prescription Pad',            	['weight'] = 10,      ['type'] = 'item',       ['image'] = 'prescriptionpad.png',         	        ['unique'] = true,     ['useable'] = true,     ['shouldClose'] = false,     ['combinable'] = nil,   ['description'] = ''},
["vicodin_prescription"] 		 	 	 		 = {["name"] = "vicodin_prescription",           				["label"] = "Vicodin Prescription",	 			["weight"] = 250, 		["type"] = "item", 		["image"] = "vicodinprescription.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,     ["description"] = ""},
["adderal_prescription"] 		 	 	 		 = {["name"] = "adderal_prescription",           				["label"] = "Adderal Prescription",	 			["weight"] = 250, 		["type"] = "item", 		["image"] = "adderalprescription.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,     ["description"] = ""},
["morphine_prescription"] 		 	 	 		 = {["name"] = "morphine_prescription",           				["label"] = "Morphine Prescription",	 			["weight"] = 250, 		["type"] = "item", 		["image"] = "morphineprescription.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,     ["description"] = ""},
["xanax_prescription"] 		 	 	 		 = {["name"] = "xanax_prescription",           				["label"] = "Xanax Prescription",	 			["weight"] = 250, 		["type"] = "item", 		["image"] = "xanaxprescription.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,     ["description"] = ""},
['adderal'] 			     = {['name'] = 'adderal', 			  			['label'] = 'Adderal', 					['weight'] = 100, 		['type'] = 'item', 		['image'] = 'adderal.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil, 					 ['description'] = ''},
['vicodin'] 			     = {['name'] = 'vicodin', 			  			['label'] = 'Vicodin', 					['weight'] = 100, 		['type'] = 'item', 		['image'] = 'vicodin.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil, 					 ['description'] = ''},
['morphine'] 			     = {['name'] = 'morphine', 			  			['label'] = 'Morphine', 					['weight'] = 100, 		['type'] = 'item', 		['image'] = 'morphine.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil, 					 ['description'] = ''},
['xanax'] 			     = {['name'] = 'xanax', 			  			['label'] = 'Xanax', 					['weight'] = 100, 		['type'] = 'item', 		['image'] = 'xanax.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil, 					 ['description'] = ''},
['adderalbottle'] 			     = {['name'] = 'adderalbottle', 			  			['label'] = 'Adderal Bottle', 					['weight'] = 100, 		['type'] = 'item', 		['image'] = 'pillbottle.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil, 					 ['description'] = ''},
['vicodinbottle'] 			     = {['name'] = 'vicodinbottle', 			  			['label'] = 'Vicodin Bottle', 					['weight'] = 100, 		['type'] = 'item', 		['image'] = 'pillbottle.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil, 					 ['description'] = ''},
['morphinebottle'] 			     = {['name'] = 'morphinebottle', 			  			['label'] = 'Morphine Bottle', 					['weight'] = 100, 		['type'] = 'item', 		['image'] = 'pillbottle.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil, 					 ['description'] = ''},
['xanaxbottle'] 			     = {['name'] = 'xanaxbottle', 			  			['label'] = 'Xanax Bottle', 					['weight'] = 100, 		['type'] = 'item', 		['image'] = 'pillbottle.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil, 					 ['description'] = ''},
---------------- XTC
['isosafrole'] 			 		 = {['name'] = 'isosafrole', 			  		['label'] = 'isosafrole', 						 ['weight'] = 100, 		['type'] = 'item', 		['image'] = 'isosafrole.png', 			['unique'] = false, 	['useable'] = false, 	['shouldClose'] = true,	   ['combinable'] = nil,					 ['description'] = ''},
['mdp2p'] 			 			 = {['name'] = 'mdp2p', 			  			['label'] = 'mdp2p', 							 ['weight'] = 100, 		['type'] = 'item', 		['image'] = 'mdp2p.png', 				['unique'] = false, 	['useable'] = false, 	['shouldClose'] = true,	   ['combinable'] = nil,				     ['description'] = ''},
["raw_xtc"] 				     = {["name"] = "raw_xtc", 			    		["label"] = "Raw XTC", 			       			 ['weight'] = 100, 		["type"] = "item", 		["image"] = "raw_xtc.png", 			    ["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,                     ["description"] = ""},
["singlepress"] 				 = {["name"] = "singlepress", 			    	["label"] = "Single Pill Press", 			     ['weight'] = 100, 		["type"] = "item", 		["image"] = "pillpress.png", 		    ["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,                     ["description"] = ""},
["white_xtc"] 				     = {["name"] = "white_xtc", 			    	["label"] = "Single Stack White XTC", 		     ['weight'] = 100, 		["type"] = "item", 		["image"] = "unstampedwhite.png", 			    ["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,                     ["description"] = ""},
["white_xtc2"] 				     = {["name"] = "white_xtc2", 			    	["label"] = "Dual Stack White XTC", 		     ['weight'] = 100, 		["type"] = "item", 		["image"] = "unstampedwhite.png", 			    ["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,                     ["description"] = ""},
["white_xtc3"] 				     = {["name"] = "white_xtc3", 			    	["label"] = "Triple Stack White XTC", 		     ['weight'] = 100, 		["type"] = "item", 		["image"] = "unstampedwhite.png", 			    ["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,                     ["description"] = ""},
["white_xtc4"] 				     = {["name"] = "white_xtc4", 			    	["label"] = "Quad Stack White XTC", 		     ['weight'] = 100, 		["type"] = "item", 		["image"] = "unstampedwhite.png", 			    ["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,                     ["description"] = ""},
["red_xtc"] 				     = {["name"] = "red_xtc", 			    		["label"] = "Single Stack Red XTC", 		     ['weight'] = 100, 		["type"] = "item", 		["image"] = "unstampedred.png", 			    ["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,                     ["description"] = ""},
["red_xtc2"] 				     = {["name"] = "red_xtc2", 			    		["label"] = "Dual Stack Red XTC", 			     ['weight'] = 100, 		["type"] = "item", 		["image"] = "unstampedred.png", 			    ["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,                     ["description"] = ""},
["red_xtc3"] 				     = {["name"] = "red_xtc3", 			    		["label"] = "Triple Stack Red XTC", 		     ['weight'] = 100, 		["type"] = "item", 		["image"] = "unstampedred.png", 			    ["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,                     ["description"] = ""},
["red_xtc4"] 				     = {["name"] = "red_xtc4", 			    		["label"] = "Quad Stack Red XTC", 			     ['weight'] = 100, 		["type"] = "item", 		["image"] = "unstampedred.png", 			    ["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,                     ["description"] = ""},
["orange_xtc"] 				     = {["name"] = "orange_xtc", 			    	["label"] = "Single Stack Orange XTC", 	         ['weight'] = 100, 		["type"] = "item", 		["image"] = "unstampedorange.png", 			    ["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,                     ["description"] = ""},
["orange_xtc2"] 				 = {["name"] = "orange_xtc2", 			   		["label"] = "Dual Stack Orange XTC", 			 ['weight'] = 100, 		["type"] = "item", 		["image"] = "unstampedorange.png", 			    ["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,                     ["description"] = ""},
["orange_xtc3"] 				 = {["name"] = "orange_xtc3", 			   		["label"] = "Triple Stack Orange XTC", 		     ['weight'] = 100, 		["type"] = "item", 		["image"] = "unstampedorange.png", 			    ["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,                     ["description"] = ""},
["orange_xtc4"] 				 = {["name"] = "orange_xtc4", 			   		["label"] = "Quad Stack Orange XTC", 			 ['weight'] = 100, 		["type"] = "item", 		["image"] = "unstampedorange.png", 			    ["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,                     ["description"] = ""},
["blue_xtc"] 				     = {["name"] = "blue_xtc", 			    		["label"] = "Single Stack Blue XTC", 			 ['weight'] = 100, 		["type"] = "item", 		["image"] = "unstampedblue.png", 			    ["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,                     ["description"] = ""},
["blue_xtc2"] 				     = {["name"] = "blue_xtc2", 			    	["label"] = "Dual Stack Blue XTC", 			     ['weight'] = 100, 		["type"] = "item", 		["image"] = "unstampedblue.png", 			    ["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,                     ["description"] = ""},
["blue_xtc3"] 				     = {["name"] = "blue_xtc3", 			    	["label"] = "Triple Stack Blue XTC", 			 ['weight'] = 100, 		["type"] = "item", 		["image"] = "unstampedblue.png", 			    ["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,                     ["description"] = ""},
["blue_xtc4"] 				     = {["name"] = "blue_xtc4", 			    	["label"] = "Quad Stack Blue XTC", 			     ['weight'] = 100, 		["type"] = "item", 		["image"] = "unstampedblue.png", 			    ["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,                     ["description"] = ""},
["white_playboys"] 				 = {["name"] = "white_playboys", 			    ["label"] = "Single Stack White Playboys", 		 ['weight'] = 100, 		["type"] = "item", 		["image"] = "playboy_white.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,                     ["description"] = ""},
["white_playboys2"] 			 = {["name"] = "white_playboys2", 			    ["label"] = "Dual Stack White Playboys", 		 ['weight'] = 100, 		["type"] = "item", 		["image"] = "playboy_white.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,                     ["description"] = ""},
["white_playboys3"] 			 = {["name"] = "white_playboys3", 			    ["label"] = "Triple Stack White Playboys", 		 ['weight'] = 100, 		["type"] = "item", 		["image"] = "playboy_white.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,                     ["description"] = ""},
["white_playboys4"] 			 = {["name"] = "white_playboys4", 			    ["label"] = "Quad Stack White Playboys", 		 ['weight'] = 100, 		["type"] = "item", 		["image"] = "playboy_white.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,                     ["description"] = ""},
["blue_playboys"] 				 = {["name"] = "blue_playboys", 			    ["label"] = "Single Stack blue Playboys", 		 ['weight'] = 100, 		["type"] = "item", 		["image"] = "playboy_blue.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,                     ["description"] = ""},
["blue_playboys2"] 				 = {["name"] = "blue_playboys2", 			    ["label"] = "Dual Stack blue Playboys", 		 ['weight'] = 100, 		["type"] = "item", 		["image"] = "playboy_blue.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,                     ["description"] = ""},
["blue_playboys3"] 				 = {["name"] = "blue_playboys3", 			    ["label"] = "Triple Stack blue Playboys", 		 ['weight'] = 100, 		["type"] = "item", 		["image"] = "playboy_blue.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,                     ["description"] = ""},
["blue_playboys4"] 				 = {["name"] = "blue_playboys4", 			    ["label"] = "Quad Stack blue Playboys", 		 ['weight'] = 100, 		["type"] = "item", 		["image"] = "playboy_blue.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,                     ["description"] = ""},
["red_playboys"] 				 = {["name"] = "red_playboys", 			    	["label"] = "Single Stack red Playboys", 		 ['weight'] = 100, 		["type"] = "item", 		["image"] = "playboy_red.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,                     ["description"] = ""},
["red_playboys2"] 				 = {["name"] = "red_playboys2", 			    ["label"] = "Dual Stack red Playboys", 			 ['weight'] = 100, 		["type"] = "item", 		["image"] = "playboy_red.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,                     ["description"] = ""},
["red_playboys3"] 				 = {["name"] = "red_playboys3", 			    ["label"] = "Triple Stack red Playboys", 		 ['weight'] = 100, 		["type"] = "item", 		["image"] = "playboy_red.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,                     ["description"] = ""},
["red_playboys4"] 				 = {["name"] = "red_playboys4", 			    ["label"] = "Quad Stack red Playboys", 			 ['weight'] = 100, 		["type"] = "item", 		["image"] = "playboy_red.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,                     ["description"] = ""},
["orange_playboys"] 			 = {["name"] = "orange_playboys", 			    ["label"] = "Single Stack orange Playboys", 	 ['weight'] = 100, 		["type"] = "item", 		["image"] = "playboy_orange.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,                     ["description"] = ""},
["orange_playboys2"] 			 = {["name"] = "orange_playboys2", 			    ["label"] = "Dual Stack orange Playboys", 		 ['weight'] = 100, 		["type"] = "item", 		["image"] = "playboy_orange.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,                     ["description"] = ""},
["orange_playboys3"] 			 = {["name"] = "orange_playboys3", 			    ["label"] = "Triple Stack orange Playboys", 	 ['weight'] = 100, 		["type"] = "item", 		["image"] = "playboy_orange.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,                     ["description"] = ""},
["orange_playboys4"] 			 = {["name"] = "orange_playboys4", 			    ["label"] = "Quad Stack orange Playboys", 		 ['weight'] = 100, 		["type"] = "item", 		["image"] = "playboy_orange.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,                     ["description"] = ""},
["white_aliens"] 				 = {["name"] = "white_aliens", 			    	["label"] = "Single Stack White aliens", 		 ['weight'] = 100, 		["type"] = "item", 		["image"] = "alien_white.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,                     ["description"] = ""},
["white_aliens2"] 				 = {["name"] = "white_aliens2", 			    ["label"] = "Dual Stack White aliens", 			 ['weight'] = 100, 		["type"] = "item", 		["image"] = "alien_white.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,                     ["description"] = ""},
["white_aliens3"] 				 = {["name"] = "white_aliens3", 			    ["label"] = "Triple Stack White aliens", 		 ['weight'] = 100, 		["type"] = "item", 		["image"] = "alien_white.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,                     ["description"] = ""},
["white_aliens4"] 				 = {["name"] = "white_aliens4", 			    ["label"] = "Quad Stack White aliens", 			 ['weight'] = 100, 		["type"] = "item", 		["image"] = "alien_white.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,                     ["description"] = ""},
["blue_aliens"] 				 = {["name"] = "blue_aliens", 			    	["label"] = "Single Stack blue aliens", 		 ['weight'] = 100, 		["type"] = "item", 		["image"] = "alien_blue.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,                     ["description"] = ""},
["blue_aliens2"] 				 = {["name"] = "blue_aliens2", 			    	["label"] = "Dual Stack blue aliens", 			 ['weight'] = 100, 		["type"] = "item", 		["image"] = "alien_blue.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,                     ["description"] = ""},
["blue_aliens3"] 				 = {["name"] = "blue_aliens3", 			    	["label"] = "Triple Stack blue aliens", 		 ['weight'] = 100, 		["type"] = "item", 		["image"] = "alien_blue.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,                     ["description"] = ""},
["blue_aliens4"] 				 = {["name"] = "blue_aliens4", 			    	["label"] = "Quad Stack blue aliens", 			 ['weight'] = 100, 		["type"] = "item", 		["image"] = "alien_blue.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,                     ["description"] = ""},
["red_aliens"] 					 = {["name"] = "red_aliens", 			    	["label"] = "Single Stack red aliens", 			 ['weight'] = 100, 		["type"] = "item", 		["image"] = "alien_red.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,                     ["description"] = ""},
["red_aliens2"] 				 = {["name"] = "red_aliens2", 			    	["label"] = "Dual Stack red aliens", 			 ['weight'] = 100, 		["type"] = "item", 		["image"] = "alien_red.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,                     ["description"] = ""},
["red_aliens3"] 				 = {["name"] = "red_aliens3", 			    	["label"] = "Triple Stack red aliens", 			 ['weight'] = 100, 		["type"] = "item", 		["image"] = "alien_red.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,                     ["description"] = ""},
["red_aliens4"] 				 = {["name"] = "red_aliens4", 			    	["label"] = "Quad Stack red aliens", 			 ['weight'] = 100, 		["type"] = "item", 		["image"] = "alien_red.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,                     ["description"] = ""},
["orange_aliens"] 				 = {["name"] = "orange_aliens", 			    ["label"] = "Single Stack orange aliens", 		 ['weight'] = 100, 		["type"] = "item", 		["image"] = "alien_orange.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,                     ["description"] = ""},
["orange_aliens2"] 				 = {["name"] = "orange_aliens2", 			    ["label"] = "Dual Stack orange aliens", 		 ['weight'] = 100, 		["type"] = "item", 		["image"] = "alien_orange.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,                     ["description"] = ""},
["orange_aliens3"] 				 = {["name"] = "orange_aliens3", 			    ["label"] = "Triple Stack orange aliens", 		 ['weight'] = 100, 		["type"] = "item", 		["image"] = "alien_orange.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,                     ["description"] = ""},
["orange_aliens4"] 				 = {["name"] = "orange_aliens4", 			    ["label"] = "Quad Stack orange aliens", 		 ['weight'] = 100, 		["type"] = "item", 		["image"] = "alien_orange.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,                     ["description"] = ""},
["white_pl"] 					 = {["name"] = "white_pl", 			    		["label"] = "Single Stack White pl", 			 ['weight'] = 100, 		["type"] = "item", 		["image"] = "PL_white.png", 			    ["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,                     ["description"] = ""},
["white_pl2"] 					 = {["name"] = "white_pl2", 			    	["label"] = "Dual Stack White pl", 			    ['weight'] = 100, 		["type"] = "item", 		["image"] = "PL_white.png", 			    ["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,                     ["description"] = ""},
["white_pl3"] 					 = {["name"] = "white_pl3", 			    	["label"] = "Triple Stack White pl", 			['weight'] = 100, 		["type"] = "item", 		["image"] = "PL_white.png", 			    ["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,                     ["description"] = ""},
["white_pl4"] 					 = {["name"] = "white_pl4", 			    	["label"] = "Quad Stack White pl", 			    ['weight'] = 100, 		["type"] = "item", 		["image"] = "PL_white.png", 			    ["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,                     ["description"] = ""},
["blue_pl"] 					 = {["name"] = "blue_pl", 			    		["label"] = "Single Stack blue pl", 		 	['weight'] = 100, 		["type"] = "item", 		["image"] = "PL_blue.png", 			    ["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,                     ["description"] = ""},
["blue_pl2"] 					 = {["name"] = "blue_pl2", 			    		["label"] = "Dual Stack blue pl", 			    ['weight'] = 100, 		["type"] = "item", 		["image"] = "PL_blue.png", 			    ["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,                     ["description"] = ""},
["blue_pl3"] 					 = {["name"] = "blue_pl3", 			    		["label"] = "Triple Stack blue pl", 			['weight'] = 100, 		["type"] = "item", 		["image"] = "PL_blue.png", 			    ["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,                     ["description"] = ""},
["blue_pl4"] 					 = {["name"] = "blue_pl4", 			    		["label"] = "Quad Stack blue pl", 			    ['weight'] = 100, 		["type"] = "item", 		["image"] = "PL_blue.png", 			    ["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,                     ["description"] = ""},
["red_pl"] 						 = {["name"] = "red_pl", 			    		["label"] = "Single Stack red pl", 			    ['weight'] = 100, 		["type"] = "item", 		["image"] = "PL_red.png", 			    ["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,                     ["description"] = ""},
["red_pl2"] 					 = {["name"] = "red_pl2", 			    		["label"] = "Dual Stack red pl", 			    ['weight'] = 100, 		["type"] = "item", 		["image"] = "PL_red.png", 			    ["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,                     ["description"] = ""},
["red_pl3"] 					 = {["name"] = "red_pl3", 			    		["label"] = "Triple Stack red pl", 			    ['weight'] = 100, 		["type"] = "item", 		["image"] = "PL_red.png", 			    ["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,                     ["description"] = ""},
["red_pl4"] 					 = {["name"] = "red_pl4", 			    		["label"] = "Quad Stack red pl", 			    ['weight'] = 100, 		["type"] = "item", 		["image"] = "PL_red.png", 			    ["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,                     ["description"] = ""},
["orange_pl"] 					 = {["name"] = "orange_pl", 			    	["label"] = "Single Stack orange pl", 			['weight'] = 100, 		["type"] = "item", 		["image"] = "PL_orange.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,                     ["description"] = ""},
["orange_pl2"] 					 = {["name"] = "orange_pl2", 			    	["label"] = "Dual Stack orange pl", 			['weight'] = 100, 		["type"] = "item", 		["image"] = "PL_orange.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,                     ["description"] = ""},
["orange_pl3"] 					 = {["name"] = "orange_pl3", 			    	["label"] = "Triple Stack orange pl", 			['weight'] = 100, 		["type"] = "item", 		["image"] = "PL_orange.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,                     ["description"] = ""},
["orange_pl4"] 					 = {["name"] = "orange_pl4", 			    	["label"] = "Quad Stack orange pl", 			['weight'] = 100, 		["type"] = "item", 		["image"] = "PL_orange.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,                     ["description"] = ""},
["white_trolls"] 				 = {["name"] = "white_trolls", 			    	["label"] = "Single Stack White trolls", 		['weight'] = 100, 		["type"] = "item", 		["image"] = "troll_white.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,                     ["description"] = ""},
["white_trolls2"] 				 = {["name"] = "white_trolls2", 			    ["label"] = "Dual Stack White trolls", 			['weight'] = 100, 		["type"] = "item", 		["image"] = "troll_white.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,                     ["description"] = ""},
["white_trolls3"] 				 = {["name"] = "white_trolls3", 			    ["label"] = "Tritrollse Stack White trolls", 	['weight'] = 100, 		["type"] = "item", 		["image"] = "troll_white.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,                     ["description"] = ""},
["white_trolls4"] 				 = {["name"] = "white_trolls4", 			    ["label"] = "Quad Stack White trolls", 			['weight'] = 100, 		["type"] = "item", 		["image"] = "troll_white.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,                     ["description"] = ""},
["blue_trolls"] 				 = {["name"] = "blue_trolls", 			    	["label"] = "Single Stack blue trolls", 		['weight'] = 100, 		["type"] = "item", 		["image"] = "troll_blue.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,                     ["description"] = ""},
["blue_trolls2"] 				 = {["name"] = "blue_trolls2", 			    	["label"] = "Dual Stack blue trolls", 			['weight'] = 100, 		["type"] = "item", 		["image"] = "troll_blue.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,                     ["description"] = ""},
["blue_trolls3"] 				 = {["name"] = "blue_trolls3", 			    	["label"] = "Tritrollse Stack blue trolls",     ['weight'] = 100, 		["type"] = "item", 		["image"] = "troll_blue.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,                     ["description"] = ""},
["blue_trolls4"] 				 = {["name"] = "blue_trolls4", 			    	["label"] = "Quad Stack blue trolls", 			['weight'] = 100, 		["type"] = "item", 		["image"] = "troll_blue.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,                     ["description"] = ""},
["red_trolls"] 					 = {["name"] = "red_trolls", 			    	["label"] = "Single Stack red trolls", 			['weight'] = 100, 		["type"] = "item", 		["image"] = "troll_red.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,                     ["description"] = ""},
["red_trolls2"] 				 = {["name"] = "red_trolls2", 			    	["label"] = "Dual Stack red trolls", 			['weight'] = 100, 		["type"] = "item", 		["image"] = "troll_red.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,                     ["description"] = ""},
["red_trolls3"] 				 = {["name"] = "red_trolls3", 			    	["label"] = "Tritrollse Stack red trolls", 		['weight'] = 100, 		["type"] = "item", 		["image"] = "troll_red.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,                     ["description"] = ""},
["red_trolls4"] 				 = {["name"] = "red_trolls4", 			    	["label"] = "Quad Stack red trolls", 			['weight'] = 100, 		["type"] = "item", 		["image"] = "troll_red.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,                     ["description"] = ""},
["orange_trolls"] 				 = {["name"] = "orange_trolls", 			    ["label"] = "Single Stack orange trolls", 	    ['weight'] = 100, 		["type"] = "item", 		["image"] = "troll_orange.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,                     ["description"] = ""},
["orange_trolls2"] 				 = {["name"] = "orange_trolls2", 			    ["label"] = "Dual Stack orange trolls", 	    ['weight'] = 100, 		["type"] = "item", 		["image"] = "troll_orange.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,                     ["description"] = ""},
["orange_trolls3"] 				 = {["name"] = "orange_trolls3", 			    ["label"] = "Tritrollse Stack orange trolls", 	['weight'] = 100, 		["type"] = "item", 		["image"] = "troll_orange.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,                     ["description"] = ""},
["orange_trolls4"] 				 = {["name"] = "orange_trolls4", 			    ["label"] = "Quad Stack orange trolls", 		['weight'] = 100, 		["type"] = "item", 		["image"] = "troll_orange.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,                     ["description"] = ""},
["white_cats"] 					 = {["name"] = "white_cats", 			    	["label"] = "Single Stack White cats", 			['weight'] = 100, 		["type"] = "item", 		["image"] = "kitty_white.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,                     ["description"] = ""},
["white_cats2"] 				 = {["name"] = "white_cats2", 			    	["label"] = "Dual Stack White cats", 			['weight'] = 100, 		["type"] = "item", 		["image"] = "kitty_white.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,                     ["description"] = ""},
["white_cats3"] 				 = {["name"] = "white_cats3", 			    	["label"] = "Tricatse Stack White cats", 		['weight'] = 100, 		["type"] = "item", 		["image"] = "kitty_white.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,                     ["description"] = ""},
["white_cats4"] 				 = {["name"] = "white_cats4", 			    	["label"] = "Quad Stack White cats", 			['weight'] = 100, 		["type"] = "item", 		["image"] = "kitty_white.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,                     ["description"] = ""},
["blue_cats"] 					 = {["name"] = "blue_cats", 			    	["label"] = "Single Stack blue cats", 			['weight'] = 100, 		["type"] = "item", 		["image"] = "kitty_blue.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,                     ["description"] = ""},
["blue_cats2"] 					 = {["name"] = "blue_cats2", 			    	["label"] = "Dual Stack blue cats", 			['weight'] = 100, 		["type"] = "item", 		["image"] = "kitty_blue.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,                     ["description"] = ""},
["blue_cats3"] 					 = {["name"] = "blue_cats3", 			    	["label"] = "Tricatse Stack blue cats", 		['weight'] = 100, 		["type"] = "item", 		["image"] = "kitty_blue.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,                     ["description"] = ""},
["blue_cats4"] 					 = {["name"] = "blue_cats4", 			    	["label"] = "Quad Stack blue cats", 			['weight'] = 100, 		["type"] = "item", 		["image"] = "kitty_blue.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,                     ["description"] = ""},
["red_cats"] 					 = {["name"] = "red_cats", 			    		["label"] = "Single Stack red cats", 			['weight'] = 100, 		["type"] = "item", 		["image"] = "kitty_red.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,                     ["description"] = ""},
["red_cats2"] 					 = {["name"] = "red_cats2", 			    	["label"] = "Dual Stack red cats", 			    ['weight'] = 100, 		["type"] = "item", 		["image"] = "kitty_red.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,                     ["description"] = ""},
["red_cats3"] 					 = {["name"] = "red_cats3", 			    	["label"] = "Tricatse Stack red cats", 			['weight'] = 100, 		["type"] = "item", 		["image"] = "kitty_red.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,                     ["description"] = ""},
["red_cats4"] 					 = {["name"] = "red_cats4", 			    	["label"] = "Quad Stack red cats", 			    ['weight'] = 100, 		["type"] = "item", 		["image"] = "kitty_red.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,                     ["description"] = ""},
["orange_cats"] 				 = {["name"] = "orange_cats", 			    	["label"] = "Single Stack orange cats", 	    ['weight'] = 100, 		["type"] = "item", 		["image"] = "kitty_orange.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,                     ["description"] = ""},
["orange_cats2"] 				 = {["name"] = "orange_cats2", 			    	["label"] = "Dual Stack orange cats", 			['weight'] = 100, 		["type"] = "item", 		["image"] = "kitty_orange.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,                     ["description"] = ""},
["orange_cats3"] 				 = {["name"] = "orange_cats3", 			    	["label"] = "Tricatse Stack orange cats", 		['weight'] = 100, 		["type"] = "item", 		["image"] = "kitty_orange.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,                     ["description"] = ""},
["orange_cats4"] 				 = {["name"] = "orange_cats4", 			    	["label"] = "Quad Stack orange cats", 			['weight'] = 100, 		["type"] = "item", 		["image"] = "kitty_orange.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,                     ["description"] = ""},
["dualpress"] 				 	 = {["name"] = "dualpress", 			    	["label"] = "Dual Pill Press", 			        ['weight'] = 100, 		["type"] = "item", 		["image"] = "pillpress.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,                     ["description"] = ""},
["triplepress"] 				 = {["name"] = "triplepress", 			    	["label"] = "Triple Pill Press", 			    ['weight'] = 100, 		["type"] = "item", 		["image"] = "pillpress.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,                     ["description"] = ""},
["quadpress"] 					 = {["name"] = "quadpress", 			    	["label"] = "Quad Pill Press", 			        ['weight'] = 100, 		["type"] = "item", 		["image"] = "pillpress.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,                     ["description"] = ""},

["cokeburner"] 				     = {["name"] = "cokeburner", 			    	["label"] = "Nokia Burner", 		     ['weight'] = 100, 		["type"] = "item", 		["image"] = "cokeburner.png", 			    ["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,                     ["description"] = ""},
["crackburner"] 				     = {["name"] = "crackburner", 			    	["label"] = "Juke Burner", 		     ['weight'] = 100, 		["type"] = "item", 		["image"] = "crackburner.png", 			    ["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,                     ["description"] = ""},
["heroinburner"] 				     = {["name"] = "heroinburner", 			    	["label"] = "Razr Burner", 		     ['weight'] = 100, 		["type"] = "item", 		["image"] = "heroinburner.png", 			    ["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,                     ["description"] = ""},
["lsdburner"] 				     = {["name"] = "lsdburner", 			    	["label"] = "SideKick Burner", 		     ['weight'] = 100, 		["type"] = "item", 		["image"] = "lsdburner.png", 			    ["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,                     ["description"] = ""},




```
6) enjoy


6) enjoy

-------------- if you want things in shops
["drugs"] = {
        [1] = {
            name = "bakingsoda",
            price = 500,
            amount = 55000,
            info = {},
            type = "item",
            slot = 1,
        },
		[2] = {
            name = "needle",
            price = 500,
            amount = 55000,
            info = {},
            type = "item",
            slot = 2,
        },
		[3] = {
            name = "emptyvial",
            price = 500,
            amount = 55000,
            info = {},
            type = "item",
            slot = 3,
        },
    },
	
	
------------------------------- if you use qb-drugs i recommend you change prices
	["cokebaggy"] = {
        min = 2500,
        max = 4250,
    },
    ["cokebaggystagetwo"] = {
        min = 2750,
        max = 4500,
    },
    ["cokebaggystagethree"] = {
        min = 3300,
        max = 5300,
    },
    
	-- TABS
    ["smiley_tabs"] = {
        min = 200,
        max = 400,
    },
    ["wildcherry_tabs"] = {
        min = 350,
        max = 1000,
    },
    ["yinyang_tabs"] = {
        min = 500,
        max = 1400,
    },
    ["pineapple_tabs"] = {
        min = 1200,
        max = 2500,
    },
    ["bart_tabs"] = {
        min = 1500,
        max = 2700,
    },
    ["gratefuldead_tabs"] = {
        min = 1800,
        max = 3500,
    },
	 ["baggedcracked"] = {
        min = 1200,
        max = 2500,
    },
    ["baggedcrackedstagetwo"] = {
        min = 1500,
        max = 2700,
    },
    ["baggedcrackstagethree"] = {
        min = 1800,
        max = 3500,
    },
	["shrooms"] = {
		min = 300,
		max = 500, 
	},
	 ["heroin_ready"] = {
        min = 1200,
        max = 2500,
    },
    ["heroin_readystagetwo"] = {
        min = 1500,
        max = 2700,
    },
    ["heroin_readystagethree"] = {
        min = 1800,
        max = 3500,
    },
