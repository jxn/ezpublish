{* DO NOT EDIT THIS FILE! Use an override template instead. *}
{let option_id=cond( is_set( $#collection_attributes[$attribute.id]), $#collection_attributes[$attribute.id].data_int, false() )}
<div class="block">
<label>{$attribute.content.name}</label>
{section show=$attribute.content.option_list}
<select name="ContentObjectAttribute_data_option_value_{$attribute.id}">
{section var=Options loop=$attribute.content.option_list}
<option value="{$Options.item.id}" {section show=$Options.item.id|eq( $option_id )}selected="selected"{/section}>{$Options.item.value}</option>
{/section}
</select>
{section-else}
{'There are no options.'|i18n( 'design/standard/content/datatype' )}
{/section}
{/let}