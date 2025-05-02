{**
 * Copyright since 2007 PrestaShop SA and Contributors
 * PrestaShop is an International Registered Trademark & Property of PrestaShop SA
 *
 * NOTICE OF LICENSE
 *
 * This source file is subject to the Academic Free License 3.0 (AFL-3.0)
 * that is bundled with this package in the file LICENSE.md.
 * It is also available through the world-wide-web at this URL:
 * https://opensource.org/licenses/AFL-3.0
 * If you did not receive a copy of the license and are unable to
 * obtain it through the world-wide-web, please send an email
 * to license@prestashop.com so we can send you a copy immediately.
 *
 * DISCLAIMER
 *
 * Do not edit or add to this file if you wish to upgrade PrestaShop to newer
 * versions in the future. If you wish to customize PrestaShop for your
 * needs please refer to https://devdocs.prestashop.com/ for more information.
 *
 * @author    KaisarCode <kaisar@kaisarcode.com>
 * @copyright 2025 KaisarCode
 * @license   https://opensource.org/licenses/AFL-3.0 Academic Free License 3.0 (AFL-3.0)
 *}

{if $field.type == 'hidden'}
  <input type="hidden" name="{$field.name}" value="{$field.value}">
{else}
  <div class="form-group">
    <label class="{if $field.required}required{/if}">
      {$field.label}
      {block name='form_field_comment'}
        {if isset($field.comment) && $field.comment}
          <span class="form-control-comment">{$field.comment}</span>
        {/if}
      {/block}
    </label>

    {if $field.type === 'select'}
      <select class="form-control" name="{$field.name}" {if $field.required}required{/if}>
        <option value disabled selected>{l s='-- please choose --' d='Shop.Forms.Labels'}</option>
        {foreach from=$field.availableValues item="label" key="value"}
          <option value="{$value}" {if $value eq $field.value} selected {/if}>{$label}</option>
        {/foreach}
      </select>
    {elseif $field.type === 'countrySelect'}
      <select class="form-control" name="{$field.name}" {if $field.required}required{/if}>
        <option value disabled selected>{l s='-- please choose --' d='Shop.Forms.Labels'}</option>
        {foreach from=$field.availableValues item="label" key="value"}
          <option value="{$value}" {if $value eq $field.value} selected {/if}>{$label}</option>
        {/foreach}
      </select>
    {elseif $field.type === 'radio-buttons'}
      {foreach from=$field.availableValues item="label" key="value"}
        <label class="radio-inline">
          <input name="{$field.name}" type="radio" value="{$value}" {if $field.required}required{/if} {if $value eq $field.value} checked {/if}>
          {$label}
        </label>
      {/foreach}
    {elseif $field.type === 'checkbox'}
      <span class="custom-checkbox">
        <input name="{$field.name}" type="checkbox" value="1" {if $field.value}checked="checked"{/if} {if $field.required}required{/if}>
        <span><i class="material-icons checkbox-checked">✓</i></span>
        <label>{$field.label nofilter}</label>
      </span>
    {elseif $field.type === 'date'}
      <input class="form-control" type="date" name="{$field.name}" value="{$field.value}" placeholder="{if isset($field.availableValues.placeholder)}{$field.availableValues.placeholder}{/if}" {if $field.required}required{/if}>
    {elseif $field.type === 'password'}
      <div class="input-group">
        <input class="form-control"
          type="password"
          name="{$field.name}"
          value=""
          pattern=".{literal}{5,}{/literal}"
          {if $field.required}required{/if}
        >
      </div>
    {elseif $field.type === 'file'}
      <input class="form-control" type="file" name="{$field.name}" {if $field.required}required{/if}>
    {else}
      <input class="form-control"
        type="{$field.type}"
        name="{$field.name}"
        value="{$field.value}"
        {if $field.maxLength}maxlength="{$field.maxLength}"{/if}
        {if $field.required}required{/if}
      >
    {/if}

    {block name='form_field_errors'}
      {include file='_partials/form-errors.tpl' errors=$field.errors}
    {/block}
  </div>
{/if}
