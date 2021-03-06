{* DO NOT EDIT THIS FILE! Use an override template instead. *}
{*?template charset=latin1?*}
{include uri='design:setup/setup_header.tpl' setup=$setup}

<form method="post" action="{$script}">

<p>
 {"The database is ready for initialization, click the %1 button when ready."|i18n("design/standard/setup/init",,array(concat("<i>","Continue"|i18n("design/standard/setup/init"),"</i>")))}
</p>
{if $database_info.info.has_demo_data}
  {if $demo_data.can_unpack}
<p>
 {"If you want you can let the setup add some demo data to your database, this demo data will give a good demonstration of the capabilities of eZ Publish"|i18n("design/standard/setup/init")} {$#version.major}.{$#version.minor}.
 {"First time users are advised to install the demo data."|i18n("design/standard/setup/init")}
</p>
<div class="input_highlight">
<p>
 {"Install demo data?"|i18n("design/standard/setup/init")}
 <input type="checkbox" name="eZSetupDemoData" value="1" {if $demo_data.use}checked="checked"{/if} />
<p>
</div>
  {else}
<blockquote class="note">
<p>
 {"Cannot install demo data, the zlib extension is missing from your PHP installation."|i18n("design/standard/setup/init")}
</p>
</blockquote>
 <input type="hidden" name="eZSetupDemoData" value="0" />
  {/if}
{else}
<blockquote class="note">
<p>
 {$database_info.info.name} {"does not support installing demo data at this point."|i18n("design/standard/setup/init")}
</p>
</blockquote>
 <input type="hidden" name="eZSetupDemoData" value="0" />
{/if}

{if $database_status.error}
<div class="error">
<p>
{if $demo_status|not}
  <h2>{"Demo data failure"|i18n("design/standard/setup/init")}</h2>
  <ul>
    <li>{"Could not unpack the demo data."|i18n("design/standard/setup/init")}</li>
    <li>{"You should try to install without demo data."|i18n("design/standard/setup/init")}</li>
  </ul>
{else}
  <h2>{"Initialization failed"|i18n("design/standard/setup/init")}</h2>
  <ul>
    <li>{"The database could not be properly initialized."|i18n("design/standard/setup/init")}</li>
    <li>{$database_status.error.text}</li>
    <li>{$database_info.info.name} Error #{$database_status.error.number}</li>
  </ul>
{/if}
</p>
</div>
{/if}

{if $database_info.table.is_empty|not}
<h1>{"Warning"|i18n("design/standard/setup/init")}</h1>
<p>
 {"Your database already contains data."|i18n("design/standard/setup/init")}
 {"The setup can continue with the initialization but may damage the present data."|i18n("design/standard/setup/init")}
</p>
<p>
 {"What do you want the setup to do?"|i18n("design/standard/setup/init")}
</p>

<blockquote class="note">
<p>
 <b>{"Note"|i18n("design/standard/setup/init")}:</b>
 {"The setup will not do an upgrade from older eZ Publish versions (such as 2.2.7) if you leave the data as it is. This is only meant for people who have existing data that they don't want to lose. If you have existing eZ Publish 4.0 data (such as from an RC release) you should skip DB initialization, however you will then need to do a manual upgrade."|i18n("design/standard/setup/init")}
</p>
</blockquote>

<div class="input_highlight">
<table cellspacing="0" cellpadding="0" border="0">
<tr>
 <td class="normal">
  <p>{"Continue but leave the data as it is."|i18n("design/standard/setup/init")}</p>
 </td>
 <td rowspan="4" class="normal">
  &nbsp;&nbsp;
 </td>
 <td class="normal">
  <input type="radio" name="eZSetupDatabaseDataChoice" value="1" />
 </td>
</tr>
<tr>
 <td class="normal">
  <p>{"Continue but remove the data first."|i18n("design/standard/setup/init")}</p>
 </td>
 <td class="normal">
  <input type="radio" name="eZSetupDatabaseDataChoice" value="2"  checked="checked" />
 </td>
</tr>
<tr>
 <td class="normal">
  <p>{"Keep data and skip database initialization."|i18n("design/standard/setup/init")}</p>
 </td>
 <td class="normal">
  <input type="radio" name="eZSetupDatabaseDataChoice" value="3" />
 </td>
</tr>
<tr>
 <td class="normal">
  <p>{"Let me choose a new database."|i18n("design/standard/setup/init")}</p>
 </td>
 <td class="normal">
  <input type="radio" name="eZSetupDatabaseDataChoice" value="4" />
 </td>
</tr>
</table>
</div>
{else}
<input type="hidden" name="eZSetupDatabaseDataChoice" value="1" />
{/if}


<blockquote class="note">
<p>
 <b>{"Note"|i18n("design/standard/setup/init")}:</b>
 {"It can take some time to initialize the database so please be patient and wait until the new page is finished."|i18n("design/standard/setup/init")}
</p>
</blockquote>


  <div class="buttonblock">
    <input type="hidden" name="eZSetupDatabaseReady" value="" />
    <input type="hidden" name="ChangeStepAction" value="" />
    <input class="defaultbutton" type="submit" name="StepButton_8" value="{'Continue'|i18n('design/standard/setup/init')} >>" />
  </div>
  {include uri='design:setup/persistence.tpl'}
</form>
