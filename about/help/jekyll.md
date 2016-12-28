---
layout: default
title: Writing for Jekyll
---

{% include toc/help.md %}

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
{: class="clearfix" }

There is a template, `entry/_posts/template.md`, upon which you can base your submission.

#### Posts

If you're writing a story, you must name the file with the date it will be published and the title all lowercase and dash-ified, like so: `YYYY-MM-DD-the-title.md`. All stories go in the folder named `entry/_posts`.

Posts have a few required and a few optional entries that belong in their frontmatter.

Required entries:

* `layout` --- should always be `post`
* `title` --- the title of your story
* `rating` --- the rating of your story, one of `green`, `yellow`, or `red` as described above

Optional entries:

* `author` --- your linkable name (see below); leaving this blank makes a story anonymous
* `content_warnings` --- a list of content warnings as described above
* `excerpt_separator` or `excerpt` --- described below

You can attribute your story to yourself by adding an `author` entry in the front-matter. If this is your first time writing for *PS*, you need to add an entry in `_data/authors.yml` for yourself (there's some instructions in the file), too.

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

Available licenses are available in the [licenses folder](https://github.com/post-self/post-self.github.io/tree/master/_includes/license). Feel free to add your own!

#### Other includes

Feel free to add any other includes in the `_includes` directory that you want. For example, if you have a hard-to-type name, you can create an include for that. For instnce {% include names/qian-guowei-zh %} is pretty hard to type, so it is included in the `_includes/names/qian-guowei-zh`, which is included with `{% raw %}{% include names/qian-guowei-zh %}{% endraw %}`.

Note that many editors will automatically include a newline at the end of files, which can mess up formatting, so be sure to turn that off. However, another solution is to add the included text in a file in `_data`. For an example of this, see `_data/characters`. You can then include text with `{% raw %}{{ site.data.characters.qian-guowei.name.zh }}{% endraw %}` which produces {{ site.data.characters.qian-guowei.name.zh }} as expected. Data doesn't need to be in a `_data` file, either: if you just need a variable for a one-off story, you can include it in the front-matter of a post --- for example, as `instance: 5f39bd7` --- and access it, continuing the example, through `{% raw %}{{ page.instance }}{% endraw %}`

This goes beyond just names, though, as it applies to licenses and metadata, such as {% include metadata/twitter value="post_self" %} which can be generated with `{% raw %}{% include metadata/twitter value="post_self" %}{% endraw %}`.
