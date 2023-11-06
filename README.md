# Obsidian vault for scientific research
The aim of this repository is to provide an already-configured Obsidian vault for scientific note taking.

## Research workflow
This workflow is strongly inspired by the [SCTO method](https://ilyashabanov.substack.com/p/note-taking-system-for-success-in).
It revolves around 4 folders, `Source Notes`, `Notions`, `Thoughts` and `Outlines`, which goals are to structure your knowledge and thoughts as you read.

Templates of notes are defined and loaded automatically when creating new entries on these main folders. This way, the notes are consistent and you can focus only on the content.

### `1. Source Notes`: take notes from a primary source
Write a summary, quick thoughts and notes in order to later keep in mind what a document is about.
These entries can be created manually, or are created automatically while loading notes from Zotero.

> To create a source note from a Zotero entry (with or without annotations), open Obisidan's quick switcher (`Ctrl+P`) and select `Zotero integration: Create Source Note`.

### `2. Notions`: concepts extracted from  primary sources
These notes are a collection of short explanations of the concepts illustrated by the primary sources.
They are the "findings" of these sources.
Collecting all the knowledge extracted from the sources on each concept is a way of having an overall view of all your knowledge on a subject.

### `3. Thoughts`: what comes into your mind while reading
Noting some loose questions or ideas coming from reading sources.
"What if we apply the method from paper X to the problem discussed in paper Y?"
These notes can be expanded upon reading: improvements, warnings, limitations, etc.

### `4. Outlines`: reviews and proposals
Agregation of notions (with their associated references), crossed with your thoughts and ideas.
These notes reflect the synthesis of your thoughts, ideas and knowledge you acquired.
Due to the structure of the notes taken so far, the references (i.e. primary sources) can easily be retrieved and compiled in a BibTex format, almost directly publishable.

### `ReadingList`: which sources have not been studied yet
When a source note is created, it has a `status` property set at `unread`.
Then, based on this property, we can generate (thanks to the Dataview plugin) an inventory of papers that have not been read or studied yet.
This reading list is available in the `ReadingList` note, which is at the root of the vault (you don't have to expand any folders to access it).

### `Knowledge Graph`: visualization of the knowledge
This bookmarked graph is a visual representation of the knowledge (i.e. the notions) extracted from the primary resources, which shows the links between the two types of notes.

> To access a bookmarked item, there is a bookmark icon next to a folder and a search one on the left side panel of Obsidian.

> To bookmark an item, there are three dots on the right of the line at the top of the editor. Select "Bookmark", and you will retrieve your item on the bookmarks!

### `Stats`:  some data about the corpus
One of the advantages of using templates for each type of note is that, in addition to only having to focus on the content of these, they are consistent, particularly with regard to their meta-data (properties at the top of each note).
Based on these meta-data, we can create Dataview requests to have additional informations about our corpus of documents.

Currently, the `Stats` note includes the following tables:
- A list of the primary sources, ordered by their year of publication. This way, we can see the temporal repartition of our sources: are they still up-to-date? Do we have enough perspective?
- A list of notions with the resources in which they are covered. This way, we can see the sources on which our knowledge is based on: Do we have enough resources on a topic?
- A list of primary sources with the notions they cover. This way, we can easily look at which papers are the broadest or the more specific in terms of topics studied.

## Daily work
Obsidian is also a great tool for organizing your mind and taking notes during daily work.

### `Daily Notes`
Obsidian has a "Daily Note" core plugin that creates a new note every day and in which we can write what we found useful, such as tips, TODOs and stuff.

They are all aggregated and ordered by date in the `Dailies` note, as well as in the "Daily Note Editor"' plugin's window, so that it is not necessary to scroll over all the files.

### `Meeting Notes`
In the same way as for daily notes, meeting notes can be taken under the corresponding folder for more formal summaries.

They are also aggregated and ordered by date (the most recent note on top) in the `Meetings` note.

### `TODOs`
Tasks can be created in any note (like daily notes) at anytime by using Obsidian's quick switcher (`Ctrl+P`) and selecting `Tasks: Create or edit task`.
They can be planned, repeated, with a deadline, or be just TODOs with none of this.

They are all aggregated in the `TODOs` note with a timeline view from [Obsidian Tasks Timeline](https://github.com/702573N/Obsidian-Tasks-Timeline).

### `Presentations`
The [Advanced Slides plugin](https://github.com/MSzturc/obsidian-advanced-slides) makes Obsidian able to create markdown-based presentations which can, sometimes, be waaaaay faster to do than a regular PowerPoint.
To know more about how to make yours, you can refer to [the plugin's documentation](https://mszturc.github.io/obsidian-advanced-slides/).

I might have the motivation to make a generic template, available in this vault, for clean presentations. Perhaps. One day. Who knows.

## Setting up Obsidian
### Community plugins used
They are already installed and pre-configured, you don't need to re-download them :)
- [Advanced Slides](https://github.com/MSzturc/obsidian-advanced-slides)
- [Advanced Tables](https://github.com/tgrosinger/advanced-tables-obsidian)
- [Annotator](https://github.com/elias-sundqvist/obsidian-annotator)
- [Better Word Count](https://github.com/lukeleppan/better-word-count)
- [Calendar](https://github.com/liamcain/obsidian-calendar-plugin)
- [Daily Notes Editor](https://github.com/Quorafind/Obsidian-Daily-Notes-Editor)
- [Dataview](https://github.com/blacksmithgu/obsidian-dataview)
- [Editor Syntax Highlight](https://github.com/deathau/cm-editor-syntax-highlight-obsidian)
- [Iconize](https://github.com/FlorianWoelki/obsidian-iconize)
- [Obsidian Git](https://github.com/denolehov/obsidian-git)
- [Pandoc Reference List](https://github.com/mgmeyers/obsidian-pandoc-reference-list)
- [Tasks](https://github.com/obsidian-tasks-group/obsidian-tasks)
- [Templater](https://github.com/SilentVoid13/Templater)
- [Quick Latex for Obsidian](https://github.com/joeyuping/quick_latex_obsidian)
- [Zotero Integration](https://github.com/mgmeyers/obsidian-zotero-integration)

- [Obsidian-Tasks-Timeline](https://github.com/702573N/Obsidian-Tasks-Timeline)

### How to use this vault?
To use this project you will need to download it, from an archive or a `git clone`. If you do the last one, I suggest you to delete the `.git` folder from the vault's root directory as it will be easier for setting up git's synchronization.

Once you have downloaded this project, open Obsidian, select "Open folder as vault", and chose the folder in which the project has been downloaded.

Then, some adjustments have to be done in order to make the vault fully functional in your environment.

#### Synchronize vault with git
The Obsidian vault, including all the notes, bookmarks, tasks, plugins and settings, can be saved and synchronized to a remote git repository.
This allows it to be accessible and up-to-date from multiple devices (computers, tablets, smartphones).

The steps to initialize the vault as a git repository are quite the same as for a regular git repository:
- Create a remote repository from your preferred provider (GitHub, GitLab, Tuleap, ...)
- Set up git on the vault's root directory:
```
git init .
git add -A
git commit -m "First commit"
git branch -M main
git remote add origin <your_git_repository_url>
git push -u origin main
```
- Set up Obsidian Git's (the plugin that handles git saves on Obsidian's side) settings. Go to Obsidian's settings > Obsidian Git (community plugins):
	- Change the commit messages for auto-saves and manual saves. I suggest you to change the prefix of the commit messages by the name of your device, so that you can track on which host the modifications occured (something like `debian autosave: {{date}}`, `android autosave: {{date}}`, ...)
	- The plugin is already pre-configured to save and push every 5 minutes; change it as you wish.

#### Install Tesseract OCR & PDF Utility
The Obsidian plugin for Zotero integration needs Tesseract, an open source OCR (Optical Character Recognition) engine that will help to search and annotate documents.
This program is used by the Zotero Integration plugin and having it installed, with its english training data, could make life easier between Zotero and Obsidian.

```
apt-get install tesseract-ocr-eng
```

```
pacman -Syu tesseract tesseract-data-eng
```

Once you have installed it, copy its installation path (which can be found with the `which tesseract` command), and paste it in Obsidian's settings > Zotero Integration (community plugins) > Tesseract path.

Still in the plugin's setting page, on top, there is a button to download PDF Utility, a program needed by the plugin. Click on it to be sure to have the latest version.

##### Extra step to setup Zotero Integration on NixOS
The PDF Utility needed by Zotero integration, `pdfannots2json`, needs to be packaged for NixOS (see [NixOS wiki](https://nixos.wiki/wiki/Packaging/Binaries)) once it has been downloaded.

The above script can be run in `.obsidian/plugins/obsidian-zotero-desktop-connector` in order to make it work:

```bash
#! /usr/bin/env nix-shell
#! nix-shell -i bash -p patchelf

patchelf \
    --set-interpreter "$(cat ${NIX_CC}/nix-support/dynamic-linker)" \
    "./pdfannots2json-linux-x64"
```

## Setting up Zotero
Zotero can be used as reference manager to find, store and annotate research papers.
Its database (source files, annotations) can be imported in this vault to fully exploit Obsidian's strength.

### Better BibTex
#### Installation
This plugin helps managing the bibliographic resources. It's especially useful to generate great citation keys.

Download the extension on [GitHub](https://github.com/retorquere/zotero-better-bibtex/releases/latest) (on Firefox, right click on the `.xpi` file of the latest release and choose "Save Link As" to avoid it to be installed as a browser extension).

On Zotero, go to Tools > Add-ons, choose "Install Add-on From File", and select the previously downloaded file.

#### Change citation template
Go to Edit > Preferences > Better BibTex and open plugin's preferences.
Change the citation template to `authEtal2+year`.

### ZotFile
#### Installation
This plugin is reponsible for naming PDF source files according to the same template.
It is not mandatory to use Zotero with Obsidian, but I strongly recommand it to have consistently named files, which is always nice.

Same as before, download the extension on [GitHub](https://github.com/jlegewie/zotfile/releases/latest) and install it on Zotero.

Extension's default template for file naming is great, but you can change it as you like in Tools > ZotFile Preferences.

## The most important part: Make this project your own!
Taking notes is a very personal job, and this workflow (which is just a proposal) is not necessarily suitable for everyone.

Do not hesitate to personalize it, whether in terms of templates, workflow or functionalities.

If, as you work with it, you find something that can be useful for some other users, please let me know, I could perhaps include it in this repository :)