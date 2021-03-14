---
title: Progress on the Build Script
date: 2013-02-17 22:44 -05:00
tags: build-script, vagrant, middleman
---

Since the first post, I've been looking at various technologies to make
maintaining the site easier.<!--more--> I wanted to start with
writing a build script that would automate the generation of the static files,
run any tests (of which I currently have none) and deploy the site, all in one
step if possible.

At the moment I've have a very simple Rakefile. In researching how I was to go
about writing the tasks, I read up on the Kernel module, which has the
[system](http://http://www.ruby-doc.org/core-1.9.3/Kernel.html#method-i-system)
method. Very handy, though whether or not it is a good practice is something
that remains to be seen.

I also wanted to try writing tests for my rake file, but I'm still having
trouble wrapping my head around writing tests in general. I'll get to that, on
the next release.

Also in my research I came to the subject of virtual machines (VMs) and
provisioning as way of creating and isolating a development environment.

## Vagrant

[Vagrant](http://www.vagrantup.com) is an interface to
[VirtualBox](http://www.virtualbox.com) that allows provisioning of VMs with
various tools like [Chef](http://www.opscode.com/chef/) or
[Puppet](http://puppetlabs.com/puppet). The idea is nice, but the set up and
execution unfortunately have failed in some aspects. VirtualBox's shared folders
suffer from severe performance degradations, but that was easy enough to solve
by using a [Network File
System](http://en.wikipedia.org/wiki/Network_File_System_(protocol)) service.
Unfortunately, I had issues with [Middleman](http://middlemanapp.com): editing a
file locally while the Middleman server is running wouldn't register changes
with Middleman itself. I worked around this by mounting the shared folder with
`sshfs`, but that seemed to lead to more issues, and while trying to suspend the
VM, the terminal completely locked up. I had to restart my physical machine.

So for the moment, I'll be passing on using a VM to develop.

## Middleman Blog extension

There's a [bug](https://github.com/middleman/middleman-blog/issues/94) when
using the middleman-blog extension. If you don't explicitly specify your
timezone in the configuration file `config.rb` via `Time.zone`, the extension
will complain about the date in the filename and the date in the frontmatter not
matching.

I think a fix is on the way, but either way, it might be prudent to just require
setting the time zone.
