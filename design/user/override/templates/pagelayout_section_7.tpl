{*?template charset=latin1?*}
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="no" lang="no">

<head>
    <title>{$site.title} - {section name=Path loop=$module_result.path}{$Path:item.text}{delimiter} / {/delimiter}{/section}</title>

    <link rel="stylesheet" type="text/css" href={"stylesheets/core.css"|ezdesign} />
    <link rel="stylesheet" type="text/css" href={"stylesheets/intranet.css"|ezdesign} />
{* check if we need a http-equiv refresh *}
{section show=$site.redirect}
<meta http-equiv="Refresh" content="{$site.redirect.timer}; URL={$site.redirect.location}" />
{/section}
{section name=HTTP loop=$site.http_equiv}
<meta http-equiv="{$HTTP:key}" content="{$HTTP:item}" />

{/section}

<!-- Meta information START -->

{section name=meta loop=$site.meta}
<meta name="{$meta:key}" content="{$meta:item}" />

{/section}

<meta name="MSSmartTagsPreventParsing" content="TRUE" />

<meta name="generator" content="eZ publish" />

<!-- Meta information END -->

</head>

<body>

<img src={"toppmeny.gif"|ezimage} alt="" border="" USEMAP="#map" />

<MAP NAME="map">
<AREA SHAPE="RECT" COORDS="1,1,71,25" href={"content/view/full/26/"|ezurl}>
<AREA SHAPE="RECT" COORDS="73,0,156,24" href={"content/view/full/159/"|ezurl}>
<AREA SHAPE="RECT" COORDS="157,0,228,23" href={"content/view/full/62/"|ezurl}>
<AREA SHAPE="RECT" COORDS="229,0,299,24" href={"content/view/full/200/"|ezurl}>
<AREA SHAPE="RECT" COORDS="300,0,372,24" href={"content/view/full/32/"|ezurl}>
<AREA SHAPE="RECT" COORDS="374,1,448,24" href={"content/view/full/211/"|ezurl}>
<AREA SHAPE="RECT" COORDS="450,1,523,24" href={"content/view/full/82/"|ezurl}>
</MAP>

{let file_list=fetch(content,list,hash(parent_node_id,201,sort_by,array(array(published,false())),limit,5,))
     news_list=fetch(content,tree,hash(parent_node_id,200,limit,5,sort_by,array(published,false()),class_filter_type,include,class_filter_array,array(2)))}

<form action={"/content/search/"|ezurl} method="get">

<table class="layout" width="700" cellpadding="0" cellspacing="0" border="0">
<tr>
    <td class="tight" colspan="2"><img class="toplogo" src={"intranet-top-logo.gif"|ezimage} width="142" height="32" alt="Intranet" /></td>
</tr>
<tr>
    <td class="topline" background={"intranet-top-background-repeat.gif"|ezimage} width="1%">
    <input type="hidden" name="SectionID" value="7" />
    <input class="searchbox" type="text" size="10" name="SearchText" id="Search" value="" />
    </td>
    <td class="topline" width="1%" background={"intranet-top-background-repeat.gif"|ezimage} >
    <input name="SearchButton" type="submit" value="{"Search"|i18n('pagelayout')}" />
    </td>
    <td class="topline" width="98%" align="right" background={"intranet-top-background-repeat.gif"|ezimage} ><img src={"intranet-top-background-image.gif"|ezimage} width="160" height="48" alt="" /></td>
</tr>
</table>
</form>

<div class="path">
&gt;
     {section name=Path loop=$module_result.path offset=2 show=eq($DesignKeys:used.viewmode,'full')}
        {section show=$Path:item.url}
        <a class="small" href={$Path:item.url|ezurl}>{$Path:item.text}</a>
        {section-else}
	<span class="small">{$Path:item.text}</span>
        {/section}

        {delimiter}
        <span class="small">/</span>
        {/delimiter}
    {section-else}
     {section name=Path loop=$module_result.path}
        {section show=$Path:Path:item.url}
        <a class="small" href="{$Path:item.url}">{$Path:Path:item.text}</a>
        {section-else}
	<span class="small">{$Path:Path:item.text}</span>
        {/section}

        {delimiter}
        <span class="small">/</span>
        {/delimiter}
     {/section}
    {/section}
</div>

<table class="layout" width="700" cellpadding="0" cellspacing="0" border="0">
<tr>
    <td class="leftmenu">

{* Menubox start *}
    <div class="menubox">
    <table class="menubox"width="120" cellpadding="0" cellspacing="0" border="0">
    <tr>
        <th background={"intranet-menubox-corner.gif"|ezimage} width="100%">News</th>
    </tr>
    {section name=News loop=$news_list}
    <tr>
        <td class="menuchoice" colspan="2">
        <a href={concat("/content/view/full/",$News:item.node_id,"/")|ezurl}>{$News:item.name}</a>
	</td>
    </tr>
    {/section}
    </table>
    </div>
{* Menubox stop *}    

    </td>

    <td class="divider"><img src={"images/1x1.gif"|ezimage} width="16" height="1" alt="" border="0" /></td>
    <td class="maincontent" valign="top">

{* Main area start *}

{$module_result.content}

{* Main area end *}

    </td>
    <td class="divider"><img src={"images/1x1.gif"|ezimage} width="16" height="1" alt="" border="0" /></td>
    <td class="rightmenu">
{* Menubox start *}
    <div class="menubox">
    <table class="menubox"width="120" cellpadding="0" cellspacing="0" border="0">
    <tr>
        <th background={"intranet-menubox-corner.gif"|ezimage} width="100%">Files</th>
    </tr>
    {section name=File loop=$file_list}
    <tr>
        <td class="menuchoice" colspan="2">
        <a href={concat("/content/view/full/",$File:item.node_id,"/")|ezurl}>{$File:item.name}</a>
	</td>
    </tr>
    {/section}
    </table>
    </div>
{* Menubox stop *} 

    </td>
</tr>    
</table>

{/let}
</body>
</html>
