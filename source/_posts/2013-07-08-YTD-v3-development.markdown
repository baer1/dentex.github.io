---
layout: post
title: YTD v3.0 development
date: 2013-07-08 13:20:58 +0100
comments: true
categories: [WP-imported]
description: YouTube Downloader for Android - a free and ad-free app
keywords: YouTube Downloader, Android, android app, app, free, ad-free, no ads, dentex, video, YouTube, downloader
---

At the moment I'm working on a new cool feature: a dashboard for downloaded videos.

It will function as a place to interact with downloaded videos. All audio conversions and other stuff that I will implement, will work from there. This is better because this approach decouples the download from the conversion, so the user can proceed "manually" for all the other operation different from the download itself.

Single click on a video from the Dashboard gives the FFmpeg menu (audio extraction/conversion and other things as video resize, conversion, etc [TODO]), while the long-press menu implements the file management, with copy, move, rename, delete etc.
