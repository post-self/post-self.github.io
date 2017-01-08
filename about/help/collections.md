---
layout: default
title: The Mechanics
---

{% include toc/help.md %}

If you would like to add a group of entries to the site, you can do so with by adding a collection. It's quite simple!

### Frontmatter

Add a `categories` entry to the frontmatter of your posts. This will use the key 'categories', and the value will be a list. For instance:

```
layout: post
categories: [my-category]
```

or:

```
layout: post
categories:
    - my-category
```

The category name has to be a slug --- a portion of a url consisting of letters, numbers and dashes. Each post can have any number of categories if you wish.

### Category listing

The next step is to create a category listing page. In the `entries` folder, create a file named the same as the category slug you create in the last step, plus `.html`. In our case, it will be `entry/my-category.html`. That file will contain any information about the category, as well as the code that lists the entries in the category. It'll look something like this:

```
---
layout: default
title: My Incredible category
---

<p>Here's a bit of description about the category. You can put whatever HTML you want here.</p>

<div class="entries">
    {% for post in site.categories.my-caategory %}
        {% include entry.html post=post %}
    {% else %}
        <em>No entries</em>
    {% endfor %}
</div>
```

Since HTML is allowed in markdown, too, you can name this file `entry/my-category.md` and write your description in markdown, so long as you leave the `<div>` tags and everything within them as they are, minus changing the category name.
