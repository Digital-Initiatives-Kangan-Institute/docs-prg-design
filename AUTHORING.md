# Authoring Pages
This repository contains a `mkdocs` projects that is setup to deploy to `Netlify`.
Each page is built using `markdown` and is empowered using `material` for `mkdocs`.

Before creating any pages it's important to know how to utilize the extra features provided by `material`.

## Creating a new page
To create a new page you need to create a markdown file and then add it to the `mkdocs` navigation menu.
All pages must be created inside of the `sites/<SITE-NAME>/docs` folder.

1. Create page(s) inside the `sites/<SITE-NAME>/docs` folder. Folders and files act as routes names.
2. Open `sites/<SITE-NAME>/mkdocs.yml` and add a new key to the `nav` section, the value as the path of the new page.
3. Stage, commit, and push changes to GitHub.
4. Deploy the site using the `deploy` script (the script will handle staging, committing, and pushing changes automatically)

## Extended Markdown Syntax
There is syntax that is provided by `Material` to extend Markdown with extra features.

### Callouts
A callout is an element that adds emphasis on a piece of information.

#### Usage
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
