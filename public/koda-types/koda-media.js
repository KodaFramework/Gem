{
	"id" : "mediaKodaType",
	"title" : "Media",
	"description" :"Image, Video or Audio",
	"icon" : "/assets/images/image_add.png",
	"editor" : "/koda-editors/generic-editor.html",
	"fields" : [
		{
			"id" : "_koda_ref",
			"control" : "hiddenstring",
			"defaultValue" : ""
		},
		{
			"id" : "_koda_type",
			"control" : "hiddenstring",
			"defaultValue" : "/koda-types/koda-media.js"
		},	
		{
			"id" : "_koda_editor",
			"control" : "hiddenstring",
			"defaultValue" : "/koda-editors/generic-editor.html"
		},
		{
			"id" : "name",
			"title" : "Name",
			"description" : "The name of the image",
			"control" : "textstring",
			"defaultValue" : ""
		},
		{
			"id" : "type",
			"title" : "Type",
			"description" : "Media type",
			"control" : "textstring",
			"defaultValue" : ""
		},
		{
			"id" : "file",
			"title" : "File",
			"description" : "The file to upload",
			"control" : "mediaupload",
			"defaultValue" : ""
		}

		
	]
}