Config = {
	FrameworkExport = "qbx-core", -- Set this too your core name, only change this if you have a custom version of QBCore. 
	Debug = false, -- sends prints to the server console.
	Inventory = {QB = false, OX = true}, -- Set QB to true if you use an inventory that uses QB functionality.
	UseItem = {
		QBItemCreation = true,
		MetaData = true, 
		DocumentItem = {
			item = "document", 
			label = "Document",
			weight = 10,
			image = "printerdocument.png",
			description = "This is a custom document which has been made."
		}, 
		CreateDocument = {
			item = "emptydocuments", 
			label = "Blank Documents",
			weight = 10,
			image = "emptydocuments.png",
			description = "These are blank documents which you can use to fill them out."
		},
		PortableDocumentCopier = {
			item = "portablecopier", 
			label = "Portable Document Copier",
			weight = 10,
			image = "portablecopier.png",
			description = "If you have this machine you will be able to duplicate documents."
		},
	}
}