---
layout: post
title: "Setting downloads destination folder in YTD"
date: 2014-08-15 18:55:32 +0200
comments: true
categories: Tutorials
sharing: true
footer: true
description: "YouTube Downloader for Android - a free and ad-free app - usage tutorial - destination downloads folder"
keywords: "YouTube Downloader, Android, android app, app, free, ad-free, no ads, dentex, video, YouTube, downloader, tutorials, review, how-to"
---
Now that I implemented the *send log to developer* option (in the beta version only, for now) almost all logs were about one only issue: the notorious KitKat "feature" (...more a bug, actually) thanks to which an app can't be granted with the permission to *write* files on the external (removable) sdcard. 

For the moment, until I find a way to workaround this, for YTD to work properly downloading your preferred videos, you need to choose your device's internal memory storage as downloads destination folder.

Other possibilities are available:

- transfer files between your device's storages with your PC, while it's connected via USB;
- install a custom ROM (i.e. the great [Cyanogenmod](http://www.cyanogenmod.org/) that has been patched and does not suffer from this issue);
- or if you already have **root** on your device, there are alternative ways as via the [Xposed framework](http://forum.xda-developers.com/xposed).

For your reference, a couple of links on this matter:

- [technofaq.org](http://technofaq.org/posts/2014/04/fixing-external-sd-card-write-issue-on-android-kitkat/);
- [androidpolice.com](http://www.androidpolice.com/2014/02/17/external-blues-google-has-brought-big-changes-to-sd-cards-in-kitkat-and-even-samsung-may-be-implementing-them/).
