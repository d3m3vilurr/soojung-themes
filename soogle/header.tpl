{config_load file="config.conf"}
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>{$title}</title>
<link rel="alternate" type="application/rss+xml" title="RSS 2.0" href="{$baseurl}/rss2.php" />
<link rel="stylesheet" type="text/css" href="{$baseurl}/templates/{$skin}/styles.css"/>
<script type="text/javascript" src="{$baseurl}/libs/common.js"></script>
<script type="text/javascript" src="{$baseurl}/templates/{$skin}/javascript.js"></script>
</head>

<body onload="return correct_bbcode_image();">
<div id="header">
    <div id="Top_Logo">
        <a href="{$baseurl}">
            <img width="150" height="55" alt="Go to Blog Home"
            src="{$baseurl}/templates/{$skin}/imgs/logo_sm.gif" />
        </a>
    </div>
    <div id="Topmenu">
        <span class="blogtitle">{$title}</span> - {$description}
        <div id='Menu_List'>
            <span style='margin: 0;'><a href="{$baseurl}/rss2.php">RSS</a></span>
            {if #showCategory# ==1 && count($categories) != 0}
            <span><a href="#none" onclick="return fold_menu('div_category');">Category</a></span>
            {/if}
            {if #showArchives# ==1 && count($archvies) != 0}
            <span><a href="#none" onclick="return fold_menu('div_archive');">Archive</a></span>
            {/if}
            {if #showCalendar# == 1}
            <span><a href="#none" onclick="return fold_menu('div_calendar');">Calendar</a></span>
            {/if}
            {if #showStaticEntries# == 1 && count($static_entries) != 0}
            <span><a href="#none" onclick="return fold_menu('div_static');">Satic Post</a></span>
            {/if}
            {if #showRecentEntries# == 1 && count($recent_entries) != 0}
            <span><a href="#none" onclick="return fold_menu('div_entry');">Post</a></span>
            {/if}
            {if #showRecentComments# == 1 && count($recent_comments) != 0}
            <span><a href="#none" onclick="return fold_menu('div_recent_comment');">Comment</a></span>
            {/if}
            {if #showRecentTrackbacks# == 1 && count($recent_trackbacks) != 0}
            <span><a href="#none" onclick="return fold_menu('div_recent_trackback');">Trackback</a></span>
            {/if}
            {if #showRecentReferers# == 1 && count($recent_referers) != 0}
            <span><a href="#none" onclick="return fold_menu('div_recent_referer');">Referer</a></span>
            {/if}
            {if #showBookmarks# == 1 && count($bookmarks) != 0}
            <span><a href="#none" onclick="return fold_menu('div_bookmark');">Bookmark</a></span>
            {/if}
        </div>
    </div>

    <div id="search">
        <form action="{$baseurl}/index.php" method="get">
            <div>
            <input type="text" name="search" title="input search text" size="41" />
            <input type="submit" value="Search" />
            </div>
        </form>
    </div>

    <div id="setting">
    	<a href="{$baseurl}/admin.php">admin</a>
    </div>
</div>
