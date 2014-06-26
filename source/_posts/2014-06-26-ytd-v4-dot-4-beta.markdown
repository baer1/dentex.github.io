---
layout: post
title: "YTD v4.4 beta"
date: 2014-06-26 16:48:38 +0200
comments: true
categories: [News]
sharing: true
footer: true
description: "YouTube Downloader for Android - a free and ad-free app - new beta available"
keywords: "YouTube Downloader, Android, android app, app, free, ad-free, no ads, dentex, video, YouTube, downloader"
---
I have a new beta for YTD with a couple of new features that I played with today.

    [x] configurable downloads queue
    preliminary to the playlist download, "Oorah!"

    [x] option to invert dashboard's entries click menus
    simple stuff: this will invert the behavior of single-click 
    menu and long-press menu on dashboard items

{% img beta /images/screenshots/YTD_4.4/4.4beta.png [YTD v4.4 new features] %}

Some notes:

- FFmpeg's download is excluded from the queuing system (will always start)
- reducing the simultaneous downloads will NOT move any task from "in progress" to "queued" state
- increasing the simultaneous downloads will accordingly move, from "queued" to "in progress", the required number of tasks
- known issue: for the moment, for two-steps downloads as 1080p and 480p, after downloading the video only, the task will be (erroneously) considered "completed" and the next download in queue will fire. I hope to fix this later implementing some sort of priority for the AO stream download.

Download the apk [HERE](http://dentex.github.io/files/apk/beta/dentex.youtube.downloader_v4.4-beta.apk)
