{include file="header.tpl"}

<h2>{$entry->date|date_format:"%B %d, %Y"}</h2>
<div class="post">
	<h3 class="storytitle">{$entry->title|escape}</h3>
	<div class="meta">
		Posted at {$entry->date|date_format:"%I:%M %p"}
	</div>
	<div class="storycontent">
			{$entry->getBody()}
	</div>
	<div class="feedback">
		{if $entry->isSetOption("NO_COMMENT") == false}
			<a class="plink" href="{$entry->getHref()|escape}#comment">Comments ({$entry->getCommentCount()})</a>
		{/if}
		{if $entry->isSetOption("NO_TRACKBACK") == false}
			<a class="plink" href="{$entry->getHref()|escape}#trackback">Trackbacks ({$entry->getTrackbackCount()})</a>
		{/if}
	</div>

{if $entry->isSetOption("NO_TRACKBACK") == false}
<h2 id="trackbacks">trackbacks</h2>
<div id="trackback">
<p>
	The URI to TrackBack this entry is: {$baseurl}/trackback.php?blogid={$entry->entryId}
</p>
<ol id="trackbacklist">
{foreach from=$trackbacks item=trackback}
	<li>
		<div id="TB{$trackback->date}">
		<p>
			Trackback from <a href="{$trackback->url|escape}">{$trackback->url|escape}</a>
		</p>
		<p>{$trackback->title|escape}:</p>
		<p>
			{$trackback->getExcerpt()|strip_tags|escape}
		</p>
        </div>
	</li>
{foreachelse}
    <li style="display:none;">&nbsp;</li>
{/foreach}
</ol>
</div>
{/if}

{if $entry->isSetOption("NO_COMMENT") == false}
<h2 id="comments">Comments</h2>
<div id="comment">

<ol id="commentlist">
{foreach from=$comments item=comment}
	<li>
		<div id="CO{$comment->date}">
			
		<p>
			{$comment->getBody()}
		</p>
		<p>
			<cite>Comment by
			{if $comment->homepage != ""}
				<a href="{$comment->homepage|escape}">{$comment->name|escape}</a>
			{elseif $comment->email != ""}
				<a href="mailto:{$comment->email|escape}">{$comment->name|escape}</a>
			{else}
				{$comment->name|escape}
			{/if}
			&#8212; {$comment->date|date_format:"%m/%d/%Y @ %I:%M %p"}
			</cite>
		</p>
        </div>
	</li>
{foreachelse}
    <li style="display:none;">&nbsp;</li>
{/foreach}
</ol>

<h2>Leave a Comment</h2>

<form id="commentform" action="{$baseurl}/entry.php" method="post">
	<p>
		<input type="hidden" name="blogid" value="{$entry->entryId}" />
		<input type="hidden" name="name_name" value="{$name_name}" />
		<input type="hidden" name="email_name" value="{$email_name}" />
		<input type="hidden" name="url_name" value="{$url_name}" />
		<input type="hidden" name="body_name" value="{$body_name}" />
		<input id="author" class="text" type="text" name="{$name_name}" value="{$w_name|escape}" />
		<label for="author">Name</label>
	</p>
	<p>
		<input id="email" class="text" type="text" name="{$email_name}" value="{$w_email|escape}" />
		<label for="email">Email</label>
	</p>
	<p>
		<input id="url" class="text" type="text" name="{$url_name}" value="{$w_url|default:"http://"|escape}" />
		<label for="email">URL</label>
	</p>
	<p>
		<label>Your Comment</label>
		<br />
		<textarea name="{$body_name}" rows="5" cols="40"></textarea>
	</p>
	<p>
		<input type="submit" value="Say it!" />
	</p>
</form>
</div>
{/if}

</div>

</div>

{include file="footer.tpl"}
