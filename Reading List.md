
```dataview  
TABLE WITHOUT ID
	Link as "Source",
	title as "Title",
	year as "Year",
	itemType as "Item",
	authors as "Authors"
FROM "1. Source Notes"
FLATTEN "[[" + file.path + "|" + truncate(file.name, 20) + "]]" as Link
WHERE category = "source-note"
AND status = "unread"
```
