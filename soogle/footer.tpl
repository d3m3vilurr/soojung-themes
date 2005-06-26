<div id="menu">
    {if #showCategory# ==1 && count($categories) != 0}
    <div id="category" class="list">
	    <ul id="div_category" class="hide">
    	    {foreach from=$categories item=category}
	    	<li>
    			<a href="{$category->getHref()|escape}">{$category->name|substring:25|escape} ({$category->getEntryCount()})</a>
    		</li>
	    	{foreachelse}
    		<li></li>
		    {/foreach}
	    </ul>
    </div>
    {/if}
    {if #showArchives# ==1 && count($archvies) != 0}
    <div id="archive" class="list">
        <ul id="div_archive" class="hide">
            {foreach from=$archvies item=archive}
            <li>
                <a href="{$archive->getHref()|escape}">{$archive->getDate()|date_format:"%B %Y"|substring:25} ({$archive->getEntryCount()})</a>
            </li>
            {foreachelse}
            <li></li>
            {/foreach}
        </ul>
    </div>
    {/if}
    {if #showCalendar# ==1}    
    <div class="calendar">
        <div id="div_calendar" class="hide">
            {$calendar->getCalendar()}    
        </div>
    </div>
    {/if}
    {if #showStaticEntries# == 1 && count($static_entries) != 0}
    <div id="static" class="list">
        <ul id="div_static" class="hide">
            {foreach from=$static_entries item=static}
            <li>
                <a href="{$static->getHref()|escape}">{$static->title|escape}</a>
            </li>
            {foreachelse}
            <li></li>
            {/foreach}
        </ul>
    </div>
    {/if}
    {if #showRecentEntries# == 1 && count($recent_entries) != 0}
    <div id="recent_entry" class="list">
        <ul id="div_entry" class="hide">
            {foreach from=$recent_entries item=entry}
            <li>
                <a href="{$entry->getHref()|escape}">{$entry->title|escape}</a>
            </li>
            {foreachelse}
            <li></li>
            {/foreach}
        </ul>
    </div>
    {/if}
    {if #showRecentComments# == 1 && count($recent_comments) != 0}
    <div id="recent_comment" class="list">
        <ul id="div_recent_comment" class="hide">
            {foreach from=$recent_comments item=comment}
            <li>
                <a href="{$comment->getHref()|escape}">{$comment->getBody()|strip_tags:false|substring:35|escape}</a>
            </li>
            {/foreach}
        </ul>
    </div>
    {/if}
    {if #showRecentTrackbacks# == 1 && count($recent_trackbacks) != 0}
    <div id="recent_trackback" class="list">
        <ul id="div_recent_trackback" class="hide">
            {foreach from=$recent_trackbacks item=trackback}
            <li>
                <a href="{$trackback->getHref()|escape}">{$trackback->getExcerpt()|strip_tags|substring:27|escape}</a>
            </li>
            {/foreach}
        </ul>
    </div>
    {/if}
    {if #showRecentReferers# == 1 && count($recent_referers) != 0}
    <div id="referer" class="list">
        <ul id="div_recent_referer" class="hide">
            {foreach from=$recent_referers item=referer}
            <li>
                <a href="{$referer|escape}">{$referer|substring:25|escape}</a>
            </li>
            {/foreach}
        </ul>
    </div>
    {/if}
    {if #showBookmarks# == 1 && count($bookmarks) != 0}
    <div id="bookmark" class="list">
        <ul id="div_bookmark" class="hide">
            {foreach from=$bookmarks item=bookmark}
            <li>
                <a href="{$bookmark->url|escape}" {if #targetBlank# == 1}onclick="seturltarget(this,'_blank');"{/if}>{$bookmark->desc|substring:35|escape}</a>
            </li>
            {/foreach}
        </ul>
    </div>
    {/if}
</div> 

<div id="footer">
    <div id="footerbox">
        <div>
            <form action="{$baseurl}/index.php" method="get">
                <div>
                    <input type="text" name="search" size="31" value="{$keyword}" />
                    <input type="submit" value="Search" />
                </div>
            </form>
        </div>
        <div>
        	<a href="#none">Search within results</a> | 
			<a href="http://soojung.kldp.net">Language Tools</a> |
			<a href="http://soojung.kldp.net">Search Tips</a> |
			<a href="http://kldp.net/forum/forum.php?forum_id=1821">Dissatisfied? Help us improve</a>
        </div>
    </div>
    <p>
        {$license_link}<br />
        Powered by <a href="http://soojung.kldp.net">soojung {$soojung_version}</a>
    </p>
</div>

</body>
</html>
