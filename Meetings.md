
```dataviewjs
for(let note of dv.pages('"Meeting Notes"').sort(n => n.date, "desc"))
{
	dv.header(3, note.file.link);
	dv.paragraph("![[" + note.file.name + "]]")
}
```
