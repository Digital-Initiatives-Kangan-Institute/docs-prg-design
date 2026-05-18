# Elements
## Element Structure
HTML is made up of **elements**, which are the basic building blocks of a webpage.

Each element has three parts:

- An **opening tag**
- **Content** (the information shown on the page)
- A **closing tag**

You can think of HTML tags like quotation marks in writing. Quotation marks wrap around text to show it’s a quote, and HTML tags wrap around content to define what it is and how it should appear on a webpage.

For example:
```html
<h1>Hello, world!</h1>
```

In this example:

- `<h1>` is the **opening tag**
- `Hello, world!` is the **content**
- `</h1>` is the **closing tag**

The forward slash (`/`) inside the closing tag tells the browser that the element has ended.

Together, these form an **element**.

## Common HTML Elements
Different HTML tags have different purposes. Some create headings, some create paragraphs, and others create links or images.

### Headings
Heading elements are used to display titles and section headings on a webpage.

```html
<h1>Main Heading</h1>
<h2>Subheading</h2>
```

### Paragraphs
Paragraph elements are used to display blocks of text.

```html
<p>This is a paragraph of text.</p>
```

### Links
Link elements are used to take users to another webpage or website when clicked.

```html
<a href="https://example.com">Visit Website</a>
```

### Images
Image elements are used to display pictures on a webpage.

```html
<img src="capybara.jpg" alt="A capybara">
```

## Nesting
HTML elements can be **nested** inside one another to create structure and meaning in a webpage. This means an element can contain other elements as its **children**, forming a hierarchy that browsers use to understand how content is related and should be displayed. 

For example, a paragraph element can contain a bold element to emphasize part of the text.
```html
<p>This is a <b>bold</b> word inside a paragraph.</p>
```

In this case, the `<b>` element is **nested** inside the `<p>` element, so only the word `bold` is emphasized while still remaining part of the same paragraph.

Nesting is how most webpages are built. Things like menus, cards, and layouts are all just layers of nested elements.

## Activity

[Attempt Activity 1 - Elements](../tasks/task-1-elements.md){.md-button}