---
layout: default
title: Contributing
---

As a work of collaborative fiction, contributions to *Post-Self* are not only welcomed, they're encouraged! The idea is to collect a corpus of stories exploring a shared universe, after all.

First things first: all contributors must abide by the [code of conduct](/conduct). Contributors should also try to write content that fits within the universe of *PS*. While there are shared characters that may be used, using them is not required. Matching tone or style is also not required, though there may be a proofing pass as part of the contribution process.

Content is rated in three different categories:

`green`
:   This content is considered safe for work.

`yellow`
:   This content may get intense at times --- violence is likely, but perhaps not explicit; sex may be acknowledged to exist --- so read at work at your discretion.

`red`
:   Things may get spicy here. There's likely violence with explicit descriptions, or thoroughly discussed sexual acts, or the like.

Ratings apply to actions only, not characters. In order to be more explicit about why a rating was given, you may also provide content warnings, a simple list of what's going on in a story that would warrant a `green` or `yellow` or `red` rating. Again, these should describe actions only, not characters. Keep in mind that these warnings are visible on the listing page, and should be written using safe-for-work language.

Some examples of content warnings might be:

* violence
* explicit language
* sex
* blood
* drug use

Ratings and content warnings are simply warnings regarding content for folks who don't want to see it at that moment/ever, and not intended to restrict viewership. They are also not tags, so they're not searchable or anything. Ratings are required, and content warnings are optional.

### The mechanics

One may contribute to *Post-Self*, either modifying the site or adding a story, through [GitHub](https://github.com/post-self/post-self.github.io). Accounts at GitHub are free, of course, and will let you contribute to this project and many others.

The usage of GitHub and git to work with a project like this are beyond the scope of this document, but there are some [resources](#resources) toward the end of this document for that. Here are the basics, though:

1. Fork the [post-self.github.io](https://github.com/post-self/post-self.github.io) repository
2. Create a new branch with your changes or added story
3. Create a pull-request against [post-self/post-self.github.io] with your changes
4. Those with editorial access will review and merge your changes, or offer up some suggestions for changes to make
5. When your changes land, they'll automatically go live on the site

### Writing for Jekyll

*Post-Self* is powered by GitHub Pages, which uses a simple website tool called [Jekyll](https://jekyllrb.com). This lets you write pages and entries in Markdown or HTML, and it will pull them together into a site that can be browsed by anyone. The files that become the pages of the site use templates to lead to a consistent look across pages.

All that is needed to write an entry or create a page for *PS* is to create a Markdown or HTML file and include some metadata in the frontmatter. Frontmatter is a block of YAML at the very top of the file offset by three dashes:

```markdown
---
layout: post
title: My Fantastic Story
author: makyo
author_text: Madison "Makyo" Scott-Clary
rating: green
content_warnings:
  - foxes
---

Once upon a time, there was a very small fox who couldn't type because keyboards are too big.

...
```

#### Posts

If you're writing a story, you must name the file with the date it will be published and the title all lowercase and dash-ified, like so: `YYYY-MM-DD-the-title.md`. All stories go in the folder named `_posts`.

Posts have a few required and a few optional entries that belong in their frontmatter.

Required entries:

* `layout` --- should always be `post`
* `title` --- the title of your story
* `rating` --- the rating of your story, one of `green`, `yellow`, or `red` as described above

Optional entries:

* `author` --- your linkable name (see below); leaving this blank makes a story anonymous
* `author_text` --- the text for your name (requires `author` to also be used)
* `content_warnings` --- a list of content warnings as described above
* `excerpt_separator` or `excerpt` --- described below

You can attribute your story to yourself by adding an `author` entry (and, optionally, an `author_text` entry if you don't want just your linkable name shown) in the front-matter. If this is your first time writing for *PS*, you should add an entry in `/about/creators.md` for yourself (there's some instructions in the file), too.

`author` should be considered a username (letters, numbers, underscores, and dashes), which will be used to link to an entry on the [creators page](/about/creators). `author_text`, if it's used, is what will be displayed (otherwise `author` is displayed). For example, setting `author` to `makyo` will attribute entries to `makyo` and link to 'Madison "Makyo" Scott-Clary' on the creators page. Setting `author` to `makyo` and `author_text` to 'Madison "Makyo" Scott-Clary' creates the same link, but with the full name as text.

#### Excerpts

When stories are added like that, they will automatically show up on the listing of entries and will be displayed as a post. An excerpt from the story is generated from the first paragraph, but if you would like an actual summary to show up in the entry listing, you can add an `excerpt` entry in the frontmatter (HTML, but not Markdown, allowed):

```markdown
---
layout: post
title: My Fantastic Story
author: makyo
author_text: Madison "Makyo" Scott-Clary
rating: green
content_warnings:
  - foxes
excerpt: >
    A truly heartbreaking tale of hardship and really, really small foxes.
---

Once upon a time, there was a very small fox who couldn't type because keyboards are too big.

...
```

Finally, if you don't want to write a custom excerpt but want more than the first paragraph, you can use an excerpt separator to mark where your excerpt ends:

```markdown
---
layout: post
title: My Fantastic Story
author: makyo
author_text: Madison "Makyo" Scott-Clary
rating: green
content_warnings:
  - foxes
excerpt_separator: '<!--more-->'
---

Once upon a time, there was a very small fox who couldn't type because keyboards are too big.

She cried and cried.

<!--more-->

...
```

#### Licenses

You can display any licensing restrictions on your entry by including a license at the bottom of your post:

```liquid
{% raw %}{% include license/cc-by-sa-4.0 author='Madison Scott-Clary' year='2016' %}{% endraw %}
```

Which will produce the following:

<div class="highlight">
{% include license/cc-by-sa-4.0 author='Madison Scott-Clary' year='2016' %}
</div>

Available licenses are available in the [licenses folder](https://github.com/post-self/post-self.github.io/tree/master/_includes/license).

### "But I don't want to deal with Jekyll!"

You can [create an issue](https://github.com/post-self/post-self.github.io/issues/new) on the project and attach a file there, and it will get added to the site.

You can also [email Makyo](mailto:makyo+post-self@drab-makyo.com) your stories and she'll add them with proper attribution, but this is a last resort `:)`

### Resources

GitHub Pages

* [Jekyll](https://jekyllrb.com)
* [Supported programming languages](https://github.com/github/linguist/blob/master/lib/linguist/languages.yml)
* [Supported plugins](https://pages.github.com/versions/)

Git

* [GitHub](https://help.github.com)
* [Primer](https://try.github.io)
