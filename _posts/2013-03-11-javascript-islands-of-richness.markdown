---
layout: blog
title: Javascript "Islands of Richness"
---

# {{page.title}}

When discussing client side JavaScript, two terms are often used to discuss two common use cases: single-page apps and "islands of richness". For my purposes, I've pretty much assumed Ember.js is the definitive library when writing single-page apps. For a while I'd assumed Backbone was the equivalent for islands of richness.

The thing is, Backbone can be used to write single-page apps as well. It maybe doesn't exceed at that job, but it tries. After implementing an island of richness of my own for Townstage (a widget to allow adding artists to an event) I initially wrote it in Backbone.

The problem was, Backbone doesn't really do much as far as two way bindings go. I needed functionality such as a dropdown that, depending on the value, updated one of two hidden fields. So I had all this boilerplate Backbone code, and then a bunch of code trying to wire everything together.

My tastes these days have leaned towards thinner tools that do one thing well, vs. monolithic tools. Backbone may not be monolithic, but the fact that it tries to solve both use cases means there's probably a lot of unnecessary code for my purposes. The question then is, what does Backbone *give me* that plain jQuery does not?

Maybe I'm not familiar enough with the benefits of Backbone, but the only thing I'm coming up with right now is convention. Convention is good, it gives developers a common understanding of a project, but given the number of client side frameworks these days I don't think it buys much.

Where does that leave me? I'm on the path right now to building my own set of conventions. I'm using "Javascript: The Good Parts" to help a bit with that, but the goal is to build my own building blocks for islands of richness. I'm skeptical it is going to result in a library, but for my own purposes I think it should suit me just fine.

I'm curious if anyone else has gone down this path, or feels strongly that I should consider using a client side framework or library in place of "plain" JavaScript and jQuery?
