{extends "designs/site.tpl"}

{block content}
<div class="reading-width">
    <header class="page-header">
        <h2 class="header-title">My Drafts</h2>
        <div class="header-buttons"><a href="/blog/create?Status=Draft" class="button primary">New Blog Draft</a></div>
        <div class="header-buttons"><a href="/pages/create?Status=Draft" class="button primary">New Page Draft</a></div>
    </header>

    <ul>
    {foreach item=Draft from=$data}
        <li>{contextLink $Draft}</li>
    {foreachelse}
        <li class="empty-text">You have no drafts saved. Create a new <a href="/blog/create?Status=Draft">blog draft</a> or <a href="/pages/create?Status=Draft">page draft</a>.</li>
    {/foreach}
    </ul>
</div>
{/block}