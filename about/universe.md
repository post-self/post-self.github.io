---
layout: default
title: The Post-Self Universe
---

{% include toc/about.md %}

The *Post-Self* universe is far down a timeline from our own. Uploading of conscious entities (sensoria) became a commonly accepted solution to overpopulation, while embodied folks went about business of their own. However, since the first groups of uploaded individuals tended to be programmers, fancying themselves to be very busy, they quickly evolved ways to fork themselves to work in parallel supporting the network in which they dwelled.

As the network grew and uploading became more popular, more and more individuals joined. Not just programmers, either, but folks of all persuasions. The idea of forking evolved and spread, leading to the concepts of dissolution and merging. Embodied life remained embodied life, but within the network, forking and dissolution became a practice of its own.

### Politics and economy

The more people forked, the harder it became to run the capitalist society that worked along the same lines as the society leading up to it. Currencies collapsed and social structures became unstable as the post-scarcity economy of the network became a reality. In place of a currency representing units of labor, reputation became the primary means of trade.

### Sims

Sims are where uploaded and generated personalities 'live'. Any instance can create a private sim where they will exist alone, but most cohabitate public sims. Think of MUCKs: a public sims are akin to public, interconnected rooms on the MUCK, while private sims are rooms that you `@dig` yourself.

### Dissolution and merge strategies

In the *PS* universe, it's common for folks to split into separate instances through a process called *forking*. The way in which forking is managed is called *dissolution*. Dissolution strategies are not set in stone, and have no set definitions. Rather they're just general trends that have been named and adopted in *PS* culture.

There are three generally recognized dissolution strategies:

Task-based, 'the Taskers'
:   instances are created only as needed for specific tasks and are tracked by a `#core`; as tasks are completed, instances are recycled and their state reincorporated with the `#core` instance. Non-`#core` instances never fork. This is the most common (and most conservative) as it tends to lead to less dilution of self.

    A subset of the Taskers are the Conservatives. Conservatives believe that one should fork as little as possible, if at all.

Tracker-based, 'the Trackers'
:   instances are created on a whim, as needed, or by accident, and are tracked by a `#tracker` instance; when the instances end (through SIGHUP, SIGTERM, SIGQUIT or other such signals), their state is reincorporated with the `#tracker` instance. Non-`#tracker` instances never fork. This is the more liberal of the two most common strategies, as instances are considered basically independent personae.

Dispersal, 'the Dispersionistas'
:   instances are created on a whim or by accident, but unlike the managed strategies, they are not tracked, or not in a formal way. Instances may receive updates from each other, be friends and meet up with each other, or, rarely, become lovers. Those that stick together in some fashion may refer to themselves as a Clade, with their clade names using a common scheme. Any instance may fork, and reincorporating state is optional. This is the most radical of dissolution strategies, and is often seen as a minority, though actual numbers of personae groups are difficult to count.

When an instance ends, there's the possibility of its state being merged with another instance's (common among the Taskers and Trackers, less so among the Dispersionistas). There are several different merge strategies, and many may be discussed. Although there are trends mentioned below, there's little in the way of direct correlations between dissolution and merge strategies.

There are two generally recognized merge strategies:

* `cherrypicking` --- cherrypicking describes the act of merging only desired portions of the halted instance's sensorium. It's broken down into two substrategies:
    * `experiential` --- common primarily with Trackers, this allows one to pick and choose experiences to merge with one's own instance.
    * `knowledge-only` --- a handy shortcut and subset of experiential cherrypicking, this strategy immediately discards any feelings and memories, leaving primarily pre-digested knowledge to merge. This is most common with the Taskers, who use it for parallelized studying.
* `blithe` --- most common among Dispersionistas, this merge strategy relies on a recursive algorithm which attempts to merge the entirety of instances' sensoria while producing as few conflicts as possible (conflicts, obviously undesirable, tend to lead to neurological sequelae that can cause an instance to crash). There are two primary substrategies which help in automatically resolving conflicts:
    * `theirs` --- when encountering a conflict, the conflicting portion of the halted instance's state is kept.
    * `ours` --- when encountering a conflict, the conflicting portion of the base instance's state is kept.

### Conflicts

The further away from an instance is from another, whether in time or in forks, the more likely conflicts are, and the harder any merge becomes. Instances of separate individuals are, of course, so different as to be impossible to merge (though some are working on this).

Consider the following:

```
a -+- - - -X
    \     /
     a' -/
```

Merge `X` is simple.

```
a -+- - - - - - -X
    \           /
     a' - - - -/
```

Merge `X` becomes more difficult with conflicts.

```
a -+- - - - - -X- -Y
    \         /   /
     a' -+- -/   /
          \     /
           a''-/
```

Merge `Y` gains conflicts due to split experiences and time. Merge `X` less so, but still more conflicts than merge `X` in the first example, due to time.

```
a - - - - -X- - -?
    \     /     /
     a' -      /
              /
b - - - - - -/
```

Merge `?` is impossible with the current state of technology. The two instances have no shared past instances on which to build a reasonable diff.

### Fixes

Fixing is a means of repairing damage to one's instance. Although no amount of damage suffered to the body will cause the instance to die, it might be preferable to not be broken. This is common for those who fight for enjoyment.

Fixing involves forking from a previous moment, known as a checkpoint, instructing the new instance to perform a "fix", which is shorthand for a `blithe` merge with a `theirs` substrategy, and then quit. That means that the newly created (and fully intact) instance gains all of the memories, knowledge, experiences, and sensoria of the damaged instance.

The new instance is effectively the old instance, just whole.

### Families and clades

Families form just as often in the system as outside, of course. People fall in love, get married, have affairs, get divorced. It's all there. Children are a slightly more difficult question. They could be constructed, with an AI which incorporates aspects of sensoria from both 'parents'. Species-wide aversions (to which posthumans are not immune) leave many feeling wary of these constructed children, though. They do not age - no one does in system, except to project the outward appearance of aging - and they are not, in some minds, even human with their base template of an AI. Many would feel that they would be in some way lacking. All the same, several exist and move, unnoticed, through society.

Clades are the collection of instances forked (at any depth) from a common ancestor, an upload. Clades vary by dissolution strategy:

* Taskers attempt to maintain the smallest clade possible, with Conservatives obviously striving for a clade with one member
* Trackers may have several members in their clades, but their clades rarely expand beyond a certain point
* Dispersionistas have the largest clades, which often go unmeasured in terms of size. They're usually thought of as increasing in an exponential fashion, though this is not quite true, as it's usually assumed that Dispersionistas are loathe to quit, signal, or otherwise merge

### Quitting and signals

Instances may end three ways:

* Quitting - an instance may choose to quit at any time.
* Signals - the instance's parent from which it was forked may send a signal to the instance, such as SIGQUIT or SIGTERM. If an instance is unresponsive or out of control, the user may send SIGKILL, though they won't get much back during merging
* Crashing - instance crashes are very rare and are considered an emergency for the system maintainers. A crash may be induced through a virus, as outlined below

Instances may only merge when one of them ends. In git parlance, one may only merge commits, and the only commit available is when an instance ends. To achieve long-running mergeable instances, the long-running instance will fork, and then the new instance will quit and the sensoria will be merged down-tree as far as needed.

### Syringes and other symbolic objects

There are ways to modify one's instance in place, of course, and these are usually considered medical. To that end, code that modifies an instance tends to take the form of being bound to an object recognized as something medical: a syringe. It's a symbol, rather than something mechanical, which bears permissions to modify one's state.

Although damage to instance bodies cannot lead to instance death, an instance crash is a good way to achieve the same goal. Effecting a crash is usually done with a bit of code. These are often attached to something well known to affect an instance, such as a syringe. During fighting with the intent to crash an instance, a syringe is the most common weapon.

### Exocortices

Exocortices began as ways to store data in an easily accessible fashion for perusal later --- basically cellphones accessible through a neuro interface --- but the concept later transitioned into memory modules that weren't active until accessed directly. Things you could forget until deciding (or instructed) to remember.
