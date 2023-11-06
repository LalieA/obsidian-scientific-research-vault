---
category: thinking-note
---
<%*
let title = tp.file.title
if (title.startsWith("Untitled")) {
title = await tp.system.prompt("Title");
}
await tp.file.rename(title)
-%>
# <% `${title}` %>

> [!hint] ?
> .

>[!faq] ?
> .

>[!warning] !
> .

> [!danger] !!
> .

> [!fail] ...
> .
