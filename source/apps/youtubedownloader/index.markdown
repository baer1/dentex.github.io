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

`versionCode="88"`

`versionName="4.2"`

Download the latest APK from [THIS BLOG](http://dentex.github.io/files/apk/latest/dentex.youtube.downloader.apk)

or take it from anyone of this sites:

[![opera_link](/images/others/opera_badge.png)](http://apps.opera.com/youtube_downloader_and_audio_converterextractor.html)

[![amazon_link](/images/others/amazon-icon.png)](http://www.amazon.com/gp/product/B00BGF3LFE)

[![aptoide_link](/images/others/aptoide_logo.png)](http://dentex.store.aptoide.com/app/market/dentex.youtube.downloader/87/5596925/YouTube%20Downloader)

MD5 checksum: `64f7279dbdba1d95f7c522de795307d2`

SHA1 checksum: `38a6560806709018be85f82f9aca99f32196ac3a`

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
    (MIT License), by Gantt
    
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

     v4.2 - May 14 2014
    -----------------------------------
    [x] more downloads requiring mux now get actually queued
    [x] long running audio-extractions in background don\'t crash (may pause only) 
    [x] formats list reorganized and other optimizations
    [x] correct XDA thread link into About menu (thanks pandahunter)
    [x] Khmer translation (as WIP)

     v4.1.2 - May 04 2014
    -----------------------------------
    [x] update fix 
    [x] another tab selection fix

     v4.1.1 - May 03 2014
    -----------------------------------
    [x] correct width for search and Dashboard-filter text fields
    [x] correct tab selection when sharing links from other apps to YTD
    [x] many updated and completed translations:
        (Chinese, Czech, Dutch, German, Greek languages, Italian, 
         Portuguese-Brazil, Russian, Slovak, Vietnamese) (thanks guys!)

     v4.1 - Apr 29 2014
    -----------------------------------
    [x] light theme fixed / theme-chooser restored
    [x] default ID3 tags for direct-mp3 downloads (mrdoug's idea)
    [x] edit mp3's ID3 tags option into Dashboard

     v4.0 - Apr 27 2014
    -----------------------------------
    [x] new UI
    [x] integrated search
    [x] direct 1080p, 480p and mp3 downloads
    [x] grab direct-mp3's quality from the Auto-extract audio setting (dafnis' idea)
    [x] improved/fixed scraping
    [x] Thai  and Japanese translation (as WIP)

     v3.7.2 - Mar 21 2014
    -----------------------------------
    [x] maintenance update

     v3.7.1 - Mar 06 2014
    -----------------------------------
    [x] small bug fix

     v3.7 - Mar 05 2014
    -----------------------------------
    [x] moved to new servers (with revised update process)
    [x] fixed a bug on removing audio or video files after extraction/conversion
    [x] new FFmpeg builds from latest v2.1.3
    [x] YouTube preview thumb as mp3 album art (Barry Williams' idea)
    
     v3.6.4 - Jan 27 2014 
    ----------------------------------- 
    [x] bug fix for Dashboard restore and file import 
     
     v3.6.3 - Jan 25 2014 
    ----------------------------------- 
    [x] bug fix 
     
     v3.6.2 - Jan 24 2014 
    ----------------------------------- 
    [x] support for "youtu.be" shortened links in stock browser 
    [x] no more GPL licenced 
     
     v3.6.1 - Jan 21 2014 
    ----------------------------------- 
    [x] bug fixes 
    [x] updated translations 
     
     v3.6 - Jan 15 2014 
    ----------------------------------- 
    [x] new FFmpeg builds from latest v2.1.1: 
     - new build for x86 CPU 
     - fix for many arm devices 
    [x] menu/preferences reorganization 
    [x] fix and improvements for encrypted signatures 
    [x] high quality AO streams hack (thanks Gantt@userscripts.org) 
     
     v3.5.4 - Dic 17 2013 
    ----------------------------------- 
    [x] possibility to import into Dashboard multiple files at once 
    [x] Dashboard bottom status bar 
     
     v3.5.3 - Dic 12 2013 
    ----------------------------------- 
    [x] auto-update bug fix 
     
     v3.5.2 - Dic 11 2013 
    ----------------------------------- 
    [x] fixed missing progress bars during mux 
    [x] Dashboard backup file can be renamed 
    [x] indicator for Dashboard background jobs 
     
     v3.5.1 - Dic 09 2013 
    ----------------------------------- 
    [x] fixed two small bugs 
     
     v3.5 - Dic 09 2013 
    ----------------------------------- 
    [x] Dashboard option to mux video-only and audio-only streams 
    [x] new FFmpeg builds from latest v2.1 (with NEON support) available for download 
    [x] option to choose between Settings or Dashboard as app entry-point-activity 
    [x] "Send" option into Dashboard items long-click menu 
    [x] all "in-progress" operations visible from Dashboard 
    [x] fixed Dark and Light themes appearance 
    [x] Android 4.4 target and many other optimizations 
    [x] Czech translation 
     
     v3.4.1 - Nov 19 2013 
    ----------------------------------- 
    [x] encrypted signature patch (7) 
    [x] layout fix for Samsung GT-P5110 and GT-N8000 devices 
     
     v3.4 - Nov 18 2013 
    ----------------------------------- 
    [x] video list filters via sliding menu 
    [x] encrypted signature patch (6) 
    [x] option to clear Dashboard into its menu (with checkbox to delete also data) 
    [x] removed support for MP4 1080p and FLV 480p "hidden" streams (not working anymore) 
     
     v3.3.1 - Nov 06 2013 
    ----------------------------------- 
    [x] fix for storage free space check 
     
     v3.3 - Nov 04 2013 
    ----------------------------------- 
    [x] MP4 1080p and FLV 480p "hidden" streams support 
    [x] again, better support for "secondary" YouTube streams 
    [x] fixed important bugs on resumed downloads and storage free space 
        (thanks Christophelaures from XDA) 
     
     v3.2 - Oct 30 2013 
    ----------------------------------- 
    [x] better support for "secondary" YouTube streams 
    [x] support for audio files import into Dashboard 
    [x] other optimizations 
     
     v3.1 - Oct 26 2013 
    ----------------------------------- 
    [x] option to auto-enqueue FFmpeg tasks on downloads completion 
    [x] support for FLV video import into Dashboard 
    [x] support for video-only and audio-only "secondary" streams from YouTube
    [x] various bug fixes 
     
     v3.0.2 - Oct 11 2013 
    ----------------------------------- 
    [x] small fix 
     
     v3.0.1 - Oct 10 2013 
    ----------------------------------- 
    [x] layout fix for API 14,15,16 
    [x] other bug fixes 
     
     v3.0 - Oct 08 2013 
    ----------------------------------- 
    [x] Dashboard for interaction with downloaded video: 
     - show status/progress/speed 
     - click to: 
      ^ open video/audio file 
      ^ audio extraction/conversion 
     - long-click to manage files: 
      ^ copy 
      ^ move 
      ^ rename 
      ^ redownload 
      ^ remove 
      ^ delete 
      ^ pause/resume 
    [x] Custom download manager supporting: 
     - pause/resume 
     - YouTube link validation on resume through different networks and/or expire time 
    [x] new translations: 
     - Slovak 
     - Slovenian 
     - Vietnamese 
     - Finnish 
     
     v2.7 - Aug 20 2013 
    ----------------------------------- 
    [x] auto-patch experimental signature changes 
    [x] Android 4.3 target 
     
     v2.6.2 - Aug 08 2013 
    ----------------------------------- 
    [x] encrypted signature patch (5) 
     
     v2.6.1 - Jul 26 2013 
    ----------------------------------- 
    [x] option to show resolutions into the video list 
    [x] encrypted signature patch (4) 
     
     v2.6 - Jul 17 2013 
    ----------------------------------- 
    [x] fix for exp. signature parsing 
    [x] new translations: 
     - Arabic 
     - Danish 
     - Greek 
     
     v2.5.2 - Jul 14 2013 
    ----------------------------------- 
    [x] auto-fetch gantt's script to parse experimental signatures 
     
     v2.5.1 - Jul 12 2013 
    ----------------------------------- 
    [x] encrypted signature patch (3) 
     
     v2.5 - Jul 11 2013 
    ----------------------------------- 
    [x] encrypted signature patch (2) 
    [x] other small bugs fixed 
     
     v2.4 - Jul 02 2013 
    ----------------------------------- 
    [x] new launcher and notification icons by Sam Plane 
     
     v2.3.2 - Jun 28 2013 
    ----------------------------------- 
    [x] small bugs fixed 
     
     v2.3.1 - Jun 27 2013 
    ----------------------------------- 
    [x] encrypted signature patch 
     
     v2.3 - Jun 25 2013 
    ----------------------------------- 
    [x] encrypted signature support (thanks Gantt@userscripts.org) 
    [x] other bug/stability fixes 
     
     v2.2 - May 12 2013 
    ----------------------------------- 
    [x] fixed a bunch of BUUUUUGS !!! 
    [x] handles direct link clicks 
     
     v2.1 - May 11 2013 
    ----------------------------------- 
    [x] code optimizations 
    [x] mediaScanner bug fix (thanks Wolfram!) 
    [x] new translations: 
     - Chinese (China) 
     - Chinese (Hong Kong) 
     
     v2.0.6 - May 09 2013 
    ----------------------------------- 
    [x] dialog/toast when Downloads system app is not found 
    [x] Chinese (Taiwan) translation 
     
     v2.0.5 - May 09 2013 
    ----------------------------------- 
    [x] bug fix (FC when Downloads system app is not found)(3) 
     
     v2.0.4 - May 08 2013 
    ----------------------------------- 
    [x] bug fix (FC when Downloads system app is not found)(2) 
    [x] Hungarian translation 
     
     v2.0.3 - May 08 2013 
    ----------------------------------- 
    [x] bug fix (FC when Downloads system app is not found) 
     
     v2.0.2 - May 07 2013 
    ----------------------------------- 
    [x] bug fix 
     
     v2.0.1 - May 06 2013 
    ----------------------------------- 
    [x] bug fix 
     
     v2.0 - May 06 2013 
    ----------------------------------- 
    [x] audio extraction from downloaded video with optional conversion to mp3 (with FFmpeg) 
    [x] PayPal donation menu 
    [x] BugSense integration 
    [x] on the fly language switch 
    [x] fixed locale change to default 
    [x] 3 new option on SSH: 
     - use other ConnectBot forks 
     - use link inside same LAN 
     - SSH-send to long-press menu 
    [x] up-navigation for ativities 
    [x] nice translators list 
    [x] new translations: 
     - German 
     - Hebrew 
     - Polish (Poland) 
     - Portuguese (Brazil) 
     - Russian 
     - Spanish 
     - Western Farsi (Iran) 
     
     v1.9 - Mar 23 2013 
    ----------------------------------- 
    [x] YT web page parsing improved 
    [x] fixed notif. error when remove downloads not yet started 
    [x] 4K and 3D video support 
    [x] re-organized menus 
    [x] on the fly theme switch 
    [x] progress bar for video list 
    [x] option to enable logging 
    [x] Korean translation 
     
     v1.8.2 - Mar 15 2013 
    ----------------------------------- 
    [x] dark/light theme switcher 
    [x] option to show all the file sizes into the video list 
    [x] French translation 
     
     v1.8.1 - Mar 14 2013 
    ----------------------------------- 
    [x] notification bug fix 
     
     v1.8 - Mar 12 2013 
    ----------------------------------- 
    [x] extSdCard support 
    [x] long-press on video list item: menu to copy/share link 
    [x] auto update-check once a day 
    [x] new notification icon 
    [x] landscape orientation support 
    [x] YT video thumbnail preview 
    [x] entire row in v.list clickable 
    [x] Turkish translation 
    [x] Dutch translation 
     
     v1.7 - Mar 03 2012 
    ----------------------------------- 
    [x] translations: 
     - Italian 
     - Portuguese (Portugal) 
    [x] option to force the locale 
     
     v1.6 - Mar 01 2013 
    ----------------------------------- 
    [x] own YTD notification bar 
    [x] options for own and sys notif. 
    [x] added some credits 
     
     v1.5.2 - Feb 25 2013 
    ----------------------------------- 
    [x] better fix on bad video list 
    [x] remove stop download on click 
    [x] open DM on notif. bar click (still not working in CM ROM) 
     
     v1.5.1 - Feb 24 2013 
    ----------------------------------- 
    [x] fixed crash if no net is available 
    [x] fixed crash on bad video list 
     
     v1.5 - Feb 22 2013 
    ----------------------------------- 
    [x] online update check 
    [x] option to fetch filesizes 
    [x] stop download on click (maybe not working in CM 10.1) 
    [x] DownloadManager quick links 
    [x] settings and DM overflow menu 
    [x] reordered preferences 
    [x] small fixes 
     
     v1.4 - Jan 29 2013 
    ----------------------------------- 
    [x] licenses and code links 
    [x] Share this App option 
     
     v1.3.1 - Jan 19 2013 
    ----------------------------------- 
    [x] handle again http|https links (thanks Reiner!) 
     
     v1.3 - Jan 18 2013 
    ----------------------------------- 
    [x] share via mobile links support 
     
     v1.2 - Dec 25 2012 
    ----------------------------------- 
    [x] fix for YouTube webpage changes 
     
     v1.1.1 - Dec 16 2012 
    ----------------------------------- 
    [x] preferences fix 
     
     v1.1 - Dec 13 2012 
    ----------------------------------- 
    [x] all text strings exported 
    [x] preferences modification 
    [x] quick start tutorial 
     
     v1.0.1 - Dec 11 2012 
    ----------------------------------- 
    [x] bad typo fixed 
    [x] file-chooser new folder icons 
     
     v1.0 - Dec 11 2012 
    ----------------------------------- 
    [x] FIRST PUBLIC RELEASE 
    [x] send download via SSH 
    [x] SSH send how-to dialog 
    [x] standard download locations 
    [x] file-chooser for download dest. 
    [x] add quality suffix options 
    [x] file renaming options 
    -----------------------------------
