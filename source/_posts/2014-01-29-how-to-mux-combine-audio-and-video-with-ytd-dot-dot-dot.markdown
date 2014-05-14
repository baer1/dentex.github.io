---
layout: post
title: "How to 'mux' (combine audio and video) with YTD..."
date: 2014-01-29 20:14:07 +0100
comments: true
categories: Tutorials
description: "YouTube Downloader for Android - a free and ad-free app"
keywords: "YouTube Downloader, Android, android app, app, free, ad-free, no ads, dentex, video, YouTube, downloader"
---
##...and have back 1080p or higher resolution.

To be able to enjoy the 1080p and higher YouTube video resolutions, 
I added the Dashboard/FFmpeg feature to **MUX** (merge) a video-only 
and an audio-only streams into a single complete video.

**Downloads:**

- enable the `Get secondary streams` preference;  
- go share a video to YTD;  
- click to download the desired **VO** stream *AND* an **AO** stream.

{% img /images/screenshots/how-to-mux/1.png 300 settings %}

**After downloads completion:**

- click on the **VO** video into the Dashboard;
- select the `Add audio stream (already downloaded)` entry;
- follow instructions to download the latest FFmpeg build 
  [if not already downloaded];
- click OK;
- wait for completion.

{% img /images/screenshots/how-to-mux/2.png 300 select the VO stream %}
{% img /images/screenshots/how-to-mux/3.png 300 select entry %}
{% img /images/screenshots/how-to-mux/4.png 300 confirm %}

A complete video should be avaiable to open from the Dashboard, tagged with `MUX`.

{% img /images/screenshots/how-to-mux/5.png 300 mux entry available %}
