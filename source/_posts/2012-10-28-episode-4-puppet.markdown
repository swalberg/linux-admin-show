---
layout: post
title: "Episode 4 - Eric Sorenson of Puppet Labs"
date: 2012-10-28 15:01
comments: true
categories:
audio:
  mp3: http://linuxadminshow.com/audio/episode_4.mp3
  ogg: http://linuxadminshow.com/audio/episode_4.ogg
---

## The Show
This week I talked to Eric Sorenson of Puppet Labs about the Puppet configuration management software.

## Links
 * [Puppet Labs Home Page](http://puppetlabs.com/)
 * [Puppet Documentation](http://docs.puppetlabs.com/)
 * [Learning Puppet Series](http://docs.puppetlabs.com/learning/) - A good place to start
 * [The Puppet Forge](http://forge.puppetlabs.com/) - A place to get community built modules and talk with other Puppet users
 * [Masterless Puppet example](https://github.com/jordansissel/puppet-examples/tree/master/masterless)
 * [Masterless Puppet Capistrano script](https://www.braintreepayments.com/braintrust/decentralize-your-devops-with-masterless-puppet-and-supply-drop) - one example of using Capistrano to run Puppet on a server without needing a master
 * [Git Workflow and Puppet Environments](http://puppetlabs.com/blog/git-workflow-and-puppet-environments/)
 * [Puppet Labs GitHub Repos](https://github.com/puppetlabs/) - if you want the bleeding edge...

 * [Puppet Templates with ERB](http://docs.puppetlabs.com/guides/templating.html) - Use Ruby ERB templates to generate configuration files
 * [Facter 101](http://puppetlabs.com/blog/facter-part-1-facter-101/)
 * [Skyfall](http://www.imdb.com/title/tt1074638/) - Just watched the trailer, I'm looking forward to watching this!
 * [Eric Sorenson on Twitter](http://twitter.com/ahpook)

## Closing Thoughts

I've used Puppet a bit before, but this conversation taught me a lot about the flexibility of Puppet, such as masterless deploys, running from cron instead of as a daemon, and some of the thinking behind the design.

As Eric said early in the interview, configuration management is an important thing to do. You can start as slowly as you need to. Everything you put under management is one less thing that you have to worry about.

Of course, if something's under Puppet management it means you have to either backport all your manual changes to the manifest, or they'll be undone the next time Puppet runs. But this discipline ensures that changes are made correctly.
