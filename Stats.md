
# Years of publication

```dataview  
TABLE WITHOUT ID
	year as "Year",
	length(rows.file) as "Count", 
	rows.file.link as "Sources"
FROM "1. Source Notes"
WHERE category = "source-note"
GROUP BY year
SORT year DESC
```

# Publications covering notions

```dataview  
TABLE WITHOUT ID
	file.link as "Notions",
	file.outlinks as "Covered in"
FROM "2. Notions"
WHERE category = "notion-note"
```

# Notions covered in publications

```dataview  
TABLE WITHOUT ID
	Link as "Publication",
	filter(file.inlinks, (l) => contains(l.category, "notion-note")) as "Notions covered"
FROM "1. Source Notes"
WHERE category = "source-note"
FLATTEN "[[" + file.path + "|" + truncate(file.name, 30) + "]]" as Link
SORT length(filter(file.inlinks, (l) => contains(l.category, "notion-note"))) DESC
```
