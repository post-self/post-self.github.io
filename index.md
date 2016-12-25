---
layout: default
---

<div class="post">
    <section class="content">
    <p>
    What does it mean to be <em>Post-Self</em>?
    </p>
    <p>
    What happens when you can no longer call yourself an individual, when you've split your sense of self among several instances? How do you react? Do you withdraw into yourself, become a hermit? Do you expand until you lose all sense of identity? Do you fragment? Do you go about it deliberately, or do you let nature and chance take their course?
    </p>
    <p>
    How do you deal with relationships spanning instances of yourself? With jealousy, compassion, hatred, romance? What happens when you disagree with yourself? Do you cut that instance off? Halt the process?
    </p>
    <p>
    How do you learn from your other instances? Do you merge? Rebase? Simply read about them in the paper in the morning? What ties do you have with your other instances? Are they even yours? Do you maintain a master branch or let forks deviate from the source?
    </p>
    <p>
    What does it mean to be <em>Post-Self</em>?
    </p>
    <hr />
    </section>
</div>

*Post-Self* is a **collaborative** fiction project designed to explore the implications of a universe where the sense of self can be blurred, split, or demolished through replication into *instances*.  There is a description of [the universe](/about/universe) in which the stories take place and some [shared characters](/about/characters) which authors may use, and the [existing entries](/entries) posted from the creators involved in the project upon which to build.

{% if site.posts.size > 0 %}
-----

<div class="entries">
    <h2>Most recent</h2>
    <div class="entry">
        <h3>
            <a href="{{ site.posts[0].url }}">{{ site.posts[0].title }}</a>
            <small>
                {{ site.posts[0].date | date: "%b %-d, %Y" }}
                {% if site.posts[0].author %} &bullet; <a href="/about/creators#{{ site.posts[0].author }}">{% if site.posts[0].author_text %}{{ site.posts[0].author_text }}{% else %}{{ site.posts[0].author }}{% endif %}</a>{% endif %}
                {% if post.rating %} &bullet; Rating: {{ post.rating }}{% endif %}
                {% if post.content_warnings %} &bullet; Contains {{ post.content_warnings|join:', ' }}{% endif %}
            </small>
        </h3>
        <div class="excerpt">{{ site.posts[0].excerpt }}</div>
        <p class="more"><em><a href="{{ site.posts[0].url }}">Read more</a></em></p>
    </div>
</div>

-----
{% endif %}

Have an idea for a story? A change you'd like to see on the site? Check out the [contributing guidelines](/about/contributing) and create a pull-request or [file an issue](https://github.com/post-self/post-self.github.io/issues/new).
