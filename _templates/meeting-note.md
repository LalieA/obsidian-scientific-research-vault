---
category: meeting-note
date: <% `${tp.date.now()}` %>
---

<%*
let title = tp.file.title
if (title.startsWith("Untitled")) {
title = await tp.system.prompt("Title");
}
await tp.file.rename(tp.date.now() + " - " + title)
-%>
# <% `${title}` %>