---
title: Welcome to Curly Hair Coder!
date: 2013-02-07T17:39:00-05:00
draft: true
tags: []
categories: []
---

This has been a long time coming, too long in fact, but here it is at last.
Version 1.0.0 of Curly Hair Coder is now live!
<!--more-->

## Postmortem

I started with creating a simple landing page on [Github
Pages](http://pages.github.com), writing straight HTML and CSS. This was fine
when I had only a landing page, but as soon as I wanted to add page, I'd be
repeating myself, copying and pasting, even if I was using abbreviations or
snippets, it wouldn't scale after a while.

Github Pages natively uses [Jekyll](http://jekyllrb.com). And if you need a quick page for you project
or yourself, it'll do the job, but there were a few issues I had, mainly around
wanting use a different template engine.

I went through several other static site generators before settling on
[Middleman](http://middlemanapp.com).

### Octopress

[Octopress](http://octopress.org) seemed really cool. It extended Jekyll and even had a deploy script
for using Github (as the base project is not directly compatible). Ironically, I
think part of the reason I originally passed was involved learning *some*
[Ruby](http://www.ruby-lang.org/en/) code.

### Nanoc

I tried out [Nanoc](http://nanoc.ws) I think originally on my Windows machine, which that in itself
was amazing, as I've had problems running Ruby code on Windows in the past. It
was really nice, but involved a few concepts that were hard to get my head
around.

### Docpad

Moving from the Ruby world into the world of [Node.js](http://nodejs.org) wasn't really that hard,
I've been messing around with various node apps in the past. This was the last
generator I tried before settling on Middleman. I loved the whole plugin
concept, but unfortunately I had usage issues with Docpad with regeneration that
made development too much of chore. I'll probably check out the project after a
few weeks.

### Middleman

When I first looked at Middleman, I was a little wary since it was a Ruby app,
and my previous experiences with Jekyll, Octopress, Nanoc weren't glowing. But
since then, I've developed patience and a little bit of knowledge, especially
when it comes to things going wrong. So I gave it a shot. Read the
documentation, saw that I supported a large slew of the features I was looking
for thanks to the [Tilt](https://github.com/rtomayko/tilt) interface.

I started with a standard Middleman project. Did some basic tests. Added support
for [Slim](http://slim-lang.com). Then [LiveReload](http:/livereload.com) so I could see my changes automatically. For
blog articles (or posts or whatever you want to call them), I wanted to use
Markdown, but there were several Markdown parsers to choose from. I went with
Kramdown, as from cursory research, it was fast and supported the markup
features I needed.

For styling the pages, I previously had used
[Stylus](http://learnboost.github.com/stylus). I liked using it for
its minimal syntax, but the original style syntax of Sass was almost as
succinct. As and added bonus, I could use Compass. Originally I was planning on
using CSS Sprites for the icons on my home page, but I also knew about icon
fonts at the time. I *thought* I'd have to create my own custom font, but I
rediscovered [Font Awesome](http://fortawesome.github.com/Font-Awesome). Saved me a lot of time.

### Typography

I choose three fonts [Linux Libertine](http://linuxlibertine.sf.net/) for the headings, [Cabin](http://www.fontsquirrel.com/fonts/cabin) for content
text, and [Source Code Pro](http://www.adobe.com) for pre-formatted text and code. I'm still on the
fence on Source Code Pro, but I don't have any code examples to show off at the
moment anyway. All the fonts were downloaded from [Font
Squirrel](http://www.fontsquirrel.com).

### Design

I decided to go with a very minimal theme in regards to layout and color. There
are three colors: white for the background, black for text, and `hsl(220, 50,
50)` for links. Blockquotes are the only element that have special styling: the
background is off white/yellow, with a double white outline. The quote is
surrounded by real double quotation marks that are blue, thanks to the handy
`::before` and `::after` pseudo-elements. I'm pretty sure I didn't use the
select properly with the double colons, but I'm not sure if that really matters.

## Just the beginning

There's a lot left to do, because there are so many things I want to learn and
try out. If you're interested in what's next, check out the [public Trello
board](https://trello.com/b/dAENVNVU). Any questions or comments can be directed to me on Twitter &ndash;
[@imaginationac](http://twitter.com/imaginationac).
