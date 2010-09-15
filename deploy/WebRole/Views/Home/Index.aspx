﻿<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>Agent 008 Ball</title>
    <meta content="IE=9" http-equiv="X-UA-Compatible" />
    <meta content="Agent 008, you must sink as many balls as possible before the timer runs out. Watchout for bomb balls!"
        name="description" />
    <link href="<%: Url.StaticCdnUrl("images/thumbnail_fb.jpg") %>" rel="image_src" />
    <link href="<%: Url.StaticCdnUrl("images/favicon.ico") %>" rel="shortcut icon" />
    <link href="stylesheets/fonts.css" rel="stylesheet" type="text/css" />
    <link href="<%: Url.StaticCdnGzipAwareUrl("stylesheets/styles.css") %>" rel="stylesheet" type="text/css" />
    <script src="http://ajax.microsoft.com/ajax/jquery/jquery-1.4.2.min.js" type="text/javascript"></script>
    <script src="<%: Url.StaticCdnGzipAwareUrl("javascripts/compressed2.js") %>"></script>
</head>
<body>
    <div id="loadingbg">
        <img alt="" class="stretch" src="<%: Url.StaticCdnUrl("images/vignette.png") %>" style="position: absolute;
            width: 100%; height: 100%; left: 0px; top: 0px;" />
        <div id="loading">
            <div id="loadingpg">
            </div>
        </div>
    </div>
    <div class="hidden" id="vignette">
        <img alt="" class="stretch" id="vignetteimg" src="<%: Url.StaticCdnUrl("images/vignette.png") %>" /></div>
    <div class="content hidden" id="gamecontrolsdisplay">
        <div id="timers">
            <div class="digit" id="minutesremaining">
                2</div>
            <div class="digit" id="secondsremainingtens">
                0</div>
            <div class="digit" id="secondsremainingones">
                0</div>
            <div id="bombicon">
            </div>
            <div class="digit" id="bombsecondstens">
                3</div>
            <div class="digit" id="bombsecondsones">
                0</div>
            <div id="progress">
            </div>
        </div>
        <div id="bestscore">
        </div>
        <div id="score">
        </div>
        <div id="smalllogo">
        </div>
        <div id="instructions">
        </div>
        <div id="pause">
        </div>
        <div id="startover">
        </div>
        <div id="sounds">
            <div id="musicbutton">
                <img src="<%: Url.StaticCdnUrl("images/lightoff.png") %>" />
                <img id="musicbuttonon" src="<%: Url.StaticCdnUrl("images/lighton.png") %>" />
            </div>
            <div id="soundsbutton">
                <img src="<%: Url.StaticCdnUrl("images/lightoff.png") %>" />
                <img id="soundsbuttonon" src="<%: Url.StaticCdnUrl("images/lighton.png") %>" />
            </div>
        </div>
        <div id="pixellab">
            <a href="http://thinkpixellab.com"></a>
        </div>
    </div>
    <div class="content hidden" id="game">
        <div id="tableborder">
            <div id="table">
                <div id="boom">
                </div>
                <canvas id="shadow_canvas"></canvas>
                <canvas id="demo_canvas"></canvas>
            </div>
        </div>
    </div>
    <canvas class="hidden" id="cue_canvas"></canvas>
    <div class="content hidden" id="gamecontrolsclick">
        <div id="instructionsclick">
        </div>
        <div id="pauseclick">
        </div>
        <div id="startoverclick">
        </div>
        <div id="soundclick">
            <div id="musicbuttonclick">
            </div>
            <div id="soundsbuttonclick">
            </div>
        </div>
        <div id="pixellabclick">
            <a href="http://thinkpixellab.com"></a>
        </div>
    </div>
    <div class="hidden" id="overlay">
    </div>
    <div style="width: 100%; height: 100%; left: 0px; top: 0px;">
        <div class="content" id="messageoverlay">
            <div class="overlaymessage" id="start">
                <div id="startmessage">
                </div>
            </div>
            <div class="overlaymessage" id="resume">
            </div>
            <div class="overlaymessage" id="howtoplay">
            </div>
            <div class="overlaymessage" id="gameover">
                <div id="gameoverscore">
                    00</div>
                <div id="gameovertwitter">
                </div>
                <div id="gameoverfacebook">
                </div>
            </div>
        </div>
    </div>
    <script type="text/javascript">        var _gaq = _gaq || []; _gaq.push(['_setAccount', 'UA-18513960-1']); _gaq.push(['_trackPageview']); (function () { var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true; ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js'; var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s); })();</script>
    <script type="text/javascript">        var sc_project = 6221324; var sc_invisible = 1; var sc_security = '0296de03';</script>
    <script src="http://www.statcounter.com/counter/counter_xhtml.js" type="text/javascript"></script>
    <noscript>
        <div class="statcounter">
            <a class="statcounter" href="http://statcounter.com/tumblr/" title="counter for tumblr">
                <img alt="counter for tumblr" class="statcounter" src="http://c.statcounter.com/6221324/0/0296de03/1/" /></a></div>
    </noscript>
</body>
</html>
