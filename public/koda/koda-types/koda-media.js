{
	"fields" : [
		{
			"id" : "_koda_ref",
			"control" : "hiddenstring",
			"defaultValue" : ""
		},
		{
			"id" : "_koda_type",
			"control" : "hiddenstring",
			"defaultValue" : "/koda/koda-types/koda-media.js"
		},	
		{
			"id" : "_koda_editor",
			"control" : "hiddenstring",
			"defaultValue" : "/koda/koda-editors/generic-editor.html"
		},
		{
			"id" : "_koda_indexes",
			"control" : "hiddenstring",
			"defaultValue" : "name,tags"
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
			"description" : "Pick a media type",
			"control" : "collection",
			"values" : "png,jpg,mp3,avi",
			"defaultValue" : "jpg"
		},
		{
			"id" : "file",
			"title" : "File",
			"description" : "The file to upload",
			"control" : "imageupload",
			"defaultValue" : ""
		},
		{
			"id" : "tags",
			"title" : "Tags",
			"description" : "Comma separated",
			"control" : "textstring",
			"defaultValue" : ""
		},
		{
			"id" : "_koda_doc_links",
			"title" : "Document Link",
			"description" : "Link to another doc or index",
			"control" : "kodalinkeditor",
			"defaultValue" : ""
		}
	]
}