{extends designs/site.tpl}

{block title}{_ Resources} &mdash; {$dwoo.parent}{/block}

{block content}
<div class="row">
    <div class="col-sm-10 col-sm-offset-1 col-md-8 col-md-offset-2">
        <div class="page-header">
            <h1>{_ Resources}</h1>
        </div>

        <h2>{_ "Generic Resources"}</h2>
        <ul>
            {include includes/site.resourcelinks.tpl}
        </ul>

        {* Add custom resources list using Staff Markdown page editor box *}
        <div>
            <p>{contentBlock "custom-resources-list"}</p>
        </div>

        {* Add custom resources list for Staff using Staff Markdown page editor box *}
        {if $.User->hasAccountLevel('Staff')}
        <div class="alert alert-danger">
            <h2>{_ "Staff Resources"}</h2>
            {contentBlock "staff-resources-list"}
        </div>
        {/if}

        {* Add custom resources list for Logged in Users using Staff Markdown page editor box *}
        {if $.User->hasAccountLevel('User')}
        <div class="alert alert-success">
            <h2>{_ "Members Resources"}</h2>
            {contentBlock "members-resources-list"}
        </div>
        {/if}

    </div>
</div>
{/block}