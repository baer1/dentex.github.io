---
layout: page
title: "YouTube Downloader for Android"
date: 2014-01-27 18:14
comments: true
sharing: true
footer: true
description: YouTube Downloader for Android - a free and ad-free app
keywords: YouTube Downloader, Android, android app, app, free, ad-free, no ads, dentex, video, YouTube, downloader
---
###Android app to download YouTube videos
###(and extract/convert audio to mp3). 
####For Android 4+

![YTD](/images/apps/ytd.png)

`versionCode="90"`

`versionName="4.3.5"`

Download the latest APK from [THIS BLOG](http://dentex.github.io/files/apk/latest/dentex.youtube.downloader.apk)    

or take it from anyone of this sites:

[![opera_link](/images/others/opera_badge.png)](http://apps.opera.com/youtube_downloader_and_audio_converterextractor.html)

[![amazon_link](/images/others/amazon-icon.png)](http://www.amazon.com/gp/product/B00BGF3LFE)

[![aptoide_link](/images/others/aptoide_logo.png)](http://dentex.store.aptoide.com/app/market/dentex.youtube.downloader/89/6129343/YouTube%20Downloader)

MD5 checksum: `7fe7733e14ae27f9986f919e51b7f2ad`

SHA1 checksum: `eaf40c449a982b2300f5e4f47e9fa5988f75d5ff`

## **YouTube Downloader for Android**
## **Copyright (C) 2012-2014 Samuele Rini**

##[End User License Agreement](/apps/youtubedownloader/eula.html)

##BEFORE INSTALLATION
- remember to enable **"Unknown Sources"** from your device's **Security** settings, to allow the installation of non market Apps (and safely ignore the subsequent dialog);
- disable apps as Halo, Screenfilter, Twilight or anything similar (apps that do "draw on other apps"), otherwise the "install" button will not work;

##USAGE
- Select the "share" button in the YouTube App while watching a video (or share any YouTube plain text link via any App) and choose "YouTube downloader";
- You'll see all the video codecs and qualities available for the video you're on.
then:
- Press an item to download the video locally (on the device) or to send the download via SSH to a remote PC. Destination machine requirements: Bash and Wget. Other SSH info available;
- Long-press an item and choose between copy to clipboard or share link as text. Note: such a link (differently from when you send it via SSH) can be only used from the same device where it has been created OR from the same LAN, if you share it to another PC.
- Use the Dashboard to interact with downloaded video (audio extraction/conversion/mux and file management).

##FEATURES
- [NEW] Search for YouTube videos whithin the app
- Download locally (support for remote download to another PC via SSH);
- Support for any format/quality available from YouTube;
- Audio extraction/conversion to mp3 via item menu in the Dashboard;
- Mux Audio- and Video-only streams into a complete video (to enjoy HD resolutions available as separated streams only);
- File management options via long-click on an item in the Dashboard;
- Handle download link: copy and/or pass it to other apps;
- video list filters by format, quality ecc via (left) sliding menu;
- Many preferences to customize usage.

###KNOWN ISSUE
- some very long running downloads may be forced to PAUSE state if the Dashboard activity is not kept to the front. In this cases a manual resume is needed.

##ANTI-FEATURES
Are not supported for download all video that:

- require login (i.e. age restricted video);
- implement encrypted streams (some complete movies);
- aren't available in your country;
- are live events.

###Translation project:
[Getlocalization](http://www.getlocalization.com/ytdownloader/)

###Support forum:
[XDA-developers Thread](http://forum.xda-developers.com/showthread.php?t=2137743)

## CREDITS
    
    Credits for the custom download manager to Hiroshi Matsunaga (matsuhiro): 
    https://github.com/matsuhiro/AndroidDownloadManger (released "unlicensed"). 
    
    The FFmpeg binary (http://www.ffmpeg.org/index.html), 
    used for the audio extraction feature, is released under the LGPL-3.0.
    (FFmpeg version 2.1.3 Copyright &#169; 2000-2014 the FFmpeg developers)
    
    The Android-filechooser library is released under the MIT license.
    (Android-filechooser Copyright &#169; 2012 Hai Bison)
    Updated version at https://code.google.com/p/an-huu/
    
    Launcher and notification icons by Sam Plane: 
    http://samplane123.deviantart.com/, released under the CC BY-NC-ND 
    (http://creativecommons.org/licenses/by-nc-nd/3.0)
    
    Search and results saving adapted from the project at 
    https://github.com/falikk/MediaSearch by Yaroslav Maslov
    (released "unlicensed").
    
    The SlidingMenu library is released under the Apache License:
    https://github.com/jfeinstein10/SlidingMenu
    (Copyright &#169; 2012 Jeremy Feinstein)
    
    The liblame library, used to compile FFmpeg, is released under the LGPL.
    A GitHub project, https://github.com/intervigilium/liblame, 
    has been used to compile the lame libraries for Android.
    (liblame Copyright &#169; 2010 Ethan Chen)
    (LAME Copyright &#169; 1999-2007 The LAME Project,
    Copyright &#169; 1999-2001 Mark Taylor,
    Copyright &#169; 1998 Micheal Cheng)
    (mpglib Copyright &#169; 1995-1997 Michael Hipp)
    
    Audio tags editing library: Jaudiotagger by Paul Taylor, released under the LGPL.
    http://www.jthink.net/jaudiotagger/index.jsp 
    Copyright &#169; 2004-2007 JThink Ltd
    
    Picasso: Image downloading and caching library
    Copyright 2013 Square, Inc. http://square.github.io/picasso/
    
    Crouton library: Copyright &#169; 2012-2013 Benjamin Weiss and 
    Copyright &#169; 2012 Neofonie Mobile GmbH, as modified by Prashant Adesara 
    https://github.com/prashantadesara/CroutonExample 
    released under the Apache License
    
    Gold Medal icon by Andy, from http://psdblast.com/
    
    PagerSlidingTabStrip layout: https://github.com/astuetz/PagerSlidingTabStrip
    Copyright &#169; 2013 Andreas Stuetz, released under the Apache License.

    SmoothProgressBar: https://github.com/castorflex/SmoothProgressBar
    Copyright &#169; 2014 Antoine Merle, released under the Apache License 2.0.
    
## Code excerpts Licenses
    
    Stack Overflow (http://stackoverflow.com): 
    a question and answer site for programmers where all the content is CC BY-SA 3.0 licensed 
    (see http://creativecommons.org/licenses/by-sa/3.0)
    
    Utils.getCpuInfo(): 
    http://www.roman10.net/how-to-get-cpu-information-on-android/
    by Liu Feipeng
    
    Utils.scanMedia(&#8230;): 
    http://www.grokkingandroid.com/adding-files-to-androids-media-library-using-the-mediascanner/
    by Wolfram Rittmeyer
    
    DashboardAdapter.java and DashboardListItem.java: code adapted from 
    https://github.com/survivingwithandroid/Surviving-with-android/ 
    by Francesco Azzola (JFrankie)
    
    Rhino.jar: open-source implementation of JavaScript written entirely in Java; 
    https://developer.mozilla.org/en-US/docs/Rhino 
    license: http://www.mozilla.org/MPL/2.0/
    
    Javascript function \"decryptSignature\" and reference for the \"AO HQ hack\" 
    from the Greasemonkey script http://userscripts.org/scripts/show/25105 
    (MIT License), by gantt
    
    QueueThread.java reference: 
    http://mindtherobot.com/blog/159/android-guts-intro-to-loopers-and-handlers/
    by Ivan Memruk
    
    SHA1 file checksum method: http://www.rgagnon.com/javadetails/java-0416.html
    CC BY-NC-SA 2.5 CA licensed (see http://creativecommons.org/licenses/by-nc-sa/2.5/ca/)

#### Note

    Many device-framed screenshots visible have been
    generated with the "Device Frame Generator" Android App by 
    Prateek Srivastava, available at 
    https://github.com/f2prateek/Device-Frame-Generator/
    The generated artwork is released ander the "Creative Commons 
    Attribution 3.0 Unported" license (CC BY).


## CHANGELOG

     v4.3.5 - xxx xx 2014
    -----------------------------------
    [x] test
    [x] test
