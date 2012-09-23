---
layout: post
title: "Episode 2 - Secure Sockets Layer"
date: 2012-09-22 21:36
comments: true
categories: 
audio: http://linuxadminshow.com/audio/episode_2.mp3
---

## The Show

This week I talked to Sean Cody who is a local Unix administrator with a strong interest in security, especially Secure Sockets Layer (SSL). We got on Skype and talked about various issues to do with SSL, such as trust and proper creation and handling of certificates.

## Links

 * [DEFCON 17: More Tricks For Defeating SSL presentation by Moxie Marlinspike](http://www.youtube.com/watch?v=ibF36Yyeehw) - Sean attended this talk and "it just completely opened my eyes to how weak SSL 'as typically assumed' is."

 * [Setting up a CA](http://it.toolbox.com/blogs/securitymonkey/howto-securing-a-website-with-client-ssl-certificates-11500)

 * [An example of a CA trust policy framework](http://www.webtrust.org/homepage-documents/item27839.aspx)

 * [A Whitepaper about untrusted root certificates](http://www.sericontech.com/Downloads/Untrusted_Root_Certificates_Considered_Harmful.pdf) - This 'whitepaper' is decent.. not great but not terrible on the topic of untrusted root certs.

 * [A very nice cheat sheet](http://www.sslshopper.com/article-most-common-openssl-commands.html) - the most common OpenSSL commands.

 * [A lesson in timing attacks](http://codahale.com/a-lesson-in-timing-attacks/) - One of the many ways attackers can subvert an encrypted channel to retreive a cookie.

 * [An attack against compressed SSL](http://security.stackexchange.com/questions/19911/crime-how-to-beat-the-beast-successor/19914#19914)
 * [Arduino](http://arduino.cc)


## Closing thoughts

We talked about a lot of things this week having to do with SSL, and surprisingly most of them focused on the identity aspect, that is "am I talking to the person/thing I think I am", as opposed to the encryption part. After our discussion I have a renewed appreciation for this phase, it is indeed more important than most give it credit for.
