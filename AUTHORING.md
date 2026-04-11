# Authoring Pages
This repository contains a `mkdocs` project that is setup to deploy to `GitHub Pages`.
Each page is built using `markdown` and is empowered using `material` for `mkdocs`.

Before creating any pages it's important to know how to utilize the extra features provided by `material`.

## Creating a new page
To create a new page you need to create a markdown file and then add it to the `mkdocs` navigation menu.
All pages must be created inside of the `src/docs` folder.

1. Create page(s) inside the `src/docs` folder. Folders and files act as routes names.
2. Open `src/mkdocs.yml` and add a new key to the `nav` section, the value as the path of the new page.
3. Build the site using the `build` script.
4. Stage, commit, and push changes and GitHub will deploy the pages.

## Callouts
A callout is an element that adds emphasis on a piece of information.

### Usage
```md
# This creates a note callout
!!! note
    This is an example of the `note` callout.

# This creates an expandable note callout
??? note
    This is an example of an expandable `note` callout.

# This creates a note callout with a title
!!! note "Add your title here"
    This is an example of a callout with a title.
```
