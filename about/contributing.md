---
layout: default
title: Contributing
---

As a work of collaborative fiction, contributions to *Post-Self* are not only welcomed, they're encouraged! The idea is to collect a corpus of stories exploring a shared universe, after all.

First things first: all contributors must abide by the [code of conduct](/conduct).

One may contribute to *PS*, either modifying the site or adding a story, through [GitHub](https://github.com/post-self/post-self.github.io). Accounts at GitHub are free, of course, and will let you contribute to this project and many others.

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
---

Once upon a time, there was a very small fox who couldn't type because keyboards are too big.

...
```

Pages are a separate topic and aren't really covered here, but if you're writing a story, you must name the file with the date it will be published and the title all lowercase and dash-ified, like so: `YYYY-MM-DD-the-title.md`. All stories go in the folder named `_posts`. Finally, you must use the `post` layout in the frontmatter section.

Make sure you attribute your story to yourself (if you don't want it to be anonymous, that is) by adding an `author` entry (and, optionally, an `author_text` entry if you don't want just your linkable name shown) in the front-matter. If this is your first time writing for *PS*, you should add an entry in `/about/creators.md` for yourself (there's some instructions in the file), too.

When stories are added like that, they will automatically show up on the listing of entries and will be displayed as a post. An excerpt from the story is generated from the first paragraph, but if you would like an actual summary to show up in the entry listing, you can add an `excerpt` entry in the frontmatter:

```markdown
---
layout: post
title: My Fantastic Story
author: makyo
author_text: Madison "Makyo" Scott-Clary
excerpt: >
    A truly heartbreaking tale of hardship and really, really small foxes.
---

Once upon a time, there was a very small fox who couldn't type because keyboards are too big.

...
```

You can display any licensing restrictions on your entry by including a license at the bottom of your post:

```liquid
{% raw %}{% include license/cc-by-sa-4.0 author='Madison Scott-Clary' year='2016' %}{% endraw %}
```

Which will produce the following:

<div class="highlight">
{% include license/cc-by-sa-4.0 author='Madison Scott-Clary' year='2016' %}
</div>

Available licenses are available in the [licenses folder](https://github.com/post-self/post-self.github.io/tree/master/_includes/license).

### "But I don't want to deal with git or Jekyll!"

You can also [email Makyo](mailto:makyo+post-self@drab-makyo.com) your stories and she'll add them with proper attribution `:)`

### Resources

GitHub Pages

* [Jekyll](https://jekyllrb.com)
* [Supported programming languages](https://github.com/github/linguist/blob/master/lib/linguist/languages.yml)
* [Supported plugins](https://pages.github.com/versions/)

Git

* [GitHub](https://help.github.com)
* [Primer](https://try.github.io)
