{* DO NOT EDIT THIS FILE! Use an override template instead. *}
{default finetune=false() refresh=false() retry=false() dont_show_back=false() dont_show_forward=false()}
  <div class="buttonblock" align="right">
    <input type="hidden" name="eZSetup_current_step" value="{$setup_current_step|wash}" />
    {section show=eq( $dont_show_back, 1 )|not()}
      <input class="button" type="submit" name="eZSetup_back_button" value="&lt; {"Back"|i18n("design/standard/setup/init", "back button in installation")}" />
    {/section}
    {section show=eq( $refresh, 1 )}
      <input class="button" type="submit" name="eZSetup_refresh_button" value="{"Refresh"|i18n("design/standard/setup/init", "Refresh button in installation")}" />
    {/section}
    {section show=eq( $retry, 1 )}
      <input class="defaultbutton" type="submit" name="eZSetup_refresh_button" value="{"Retry"|i18n("design/standard/setup/init", "Retry button in installation")}" />
    {/section}
    {section show=eq( $finetune, true() )}
      <input class="button" type="submit" name="eZSetup_finetune_button" value="{"Finetune"|i18n("design/standard/setup/init", "Finetune button in installation")}" />
    {/section}
    {section show=eq( $dont_show_forward, 0 )}
        <input class="defaultbutton" type="submit" name="eZSetup_next_button" value="{"Next"|i18n("design/standard/setup/init", "next button in installation")} &gt;" />
    {/section}
  </div>
{/default}
