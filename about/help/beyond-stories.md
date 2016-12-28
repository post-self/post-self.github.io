---
layout: default
title: Beyond Stories
---

{% include toc/help.md %}

Have a video? A comic? An image? A Twine game? All of these can be published on *Post-Self*, too. Anything that doesn't require server-side interaction.

All you need to do is create a post as outlined below (this will let your entry show up on the front and entry pages, and trigger dlvr.it to send out notifications). This post will simply contain a way to view or get to your content. If it's a video uploaded to, say, Vimeo, you can embed it in your post. If it's a comic or image, you can place the images in a directory in `posts/` (e.g: if your post is named 'Merger', you can place the image in `posts/merger`) then include your image(s) in your post using markdown: `![Page 1](/posts/merger/1.png)`.

If your post is something hypertextual, living in it's own HTML file, you can drop that HTML file (and any assets) in a directory in `posts/` as well. For example, a twine game named Merger with some embedded images can be dropped in `posts/merger-game/` with the twine file named `index.html`. Then your post can have a brief description to be used as an excerpt, then a link to the game printed large:

```markdown
---
(frontmatter goes here)
---

Merger is a game about merging. It contains at least one fox.

### [Play the game](/assets/posts/merger-game)
```

Excerpts are described below, and are a very good idea for your post. Not having an excerpt will make the entry listing not very informative!

Note that, while the entire site and all posts are proofed --- that is, files are checked for validity, links are checked that they point to real locations, images exist, and so on --- the entire `posts/` directory is omitted, so be extra sure that your included posts' links work.
