@echo off
echo WARNING: THIS WILL ADD TEXT TO YOUR HOSTS FILE
echo DO NOT RUN THIS MORE THAN ONCE, IT WILL MESS UP YOUR HOSTS FILE
echo If you have issues running this program, try to launch it in administrator mode
echo Enter Y at every stage where it asks to overwrite files, this is planned
echo Content blocking sources provided by u/xXRasputintoXx on Reddit
PAUSE

attrib -r C:\Windows\System32\drivers\etc\hosts.* /s /d
echo Removed read-only permission

xcopy /s /h /x /o /e /k "C:\Windows\System32\drivers\etc\hosts.*" "%UserProfile%\Desktop"
echo Hosts file copied to desktop

cd C:\Users\Nikhil\Desktop
(
echo.
echo 127.0.0.1 adclick.g.doublecklick.net
echo 127.0.0.1 adeventtracker.spotify.com
echo 127.0.0.1 ads-fa.spotify.com
echo 127.0.0.1 analytics.spotify.com
echo 127.0.0.1 audio2.spotify.com
echo 127.0.0.1 b.scorecardresearch.com
echo 127.0.0.1 bounceexchange.com
echo 127.0.0.1 bs.serving-sys.com
echo 127.0.0.1 content.bitsontherun.com
echo 127.0.0.1 core.insightexpressai.com
echo 127.0.0.1 crashdump.spotify.com
echo 127.0.0.1 d2gi7ultltnc2u.cloudfront.net
echo 127.0.0.1 d3rt1990lpmkn.cloudfront.net
echo 127.0.0.1 desktop.spotify.com
echo 127.0.0.1 doubleclick.net
echo 127.0.0.1 ds.serving-sys.com
echo 127.0.0.1 googleadservices.com
echo 127.0.0.1 googleads.g.doubleclick.net
echo 127.0.0.1 gtssl2-ocsp.geotrust.com
echo 127.0.0.1 js.moatads.com
echo 127.0.0.1 log.spotify.com
echo 127.0.0.1 media-match.com
echo 127.0.0.1 omaze.com
echo 127.0.0.1 open.spotify.com
echo 127.0.0.1 pagead46.l.doubleclick.net
echo 127.0.0.1 pagead2.googlesyndication.com
echo 127.0.0.1 partner.googleadservices.com
echo 127.0.0.1 pubads.g.doubleclick.net
echo 127.0.0.1 redirector.gvt1.com
echo 127.0.0.1 s0.2mdn.net
echo 127.0.0.1 securepubads.g.doubleclick.net
echo 127.0.0.1 spclient.wg.spotify.com
echo 127.0.0.1 tpc.googlesyndication.com
echo 127.0.0.1 v.jwpcdn.com
echo 127.0.0.1 video-ad-stats.googlesyndication.com
echo 127.0.0.1 weblb-wg.gslb.spotify.com
echo 127.0.0.1 www.googleadservices.com
echo 127.0.0.1 www.googletagservices.com
)>>"hosts"
echo Blocked IPs affixed to hosts

xcopy /s /h /x /o /e /k "%UserProfile%\Desktop\hosts" "C:\Windows\System32\drivers\etc\" 
echo Old hosts file replaced by new one
echo Process Finished!
PAUSE
