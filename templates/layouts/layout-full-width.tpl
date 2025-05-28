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

<!DOCTYPE html>
<html lang="{$language.locale}">
  <head>
    {block name='head'}
      <meta charset="utf-8">
      <meta name="viewport" content="width=device-width, initial-scale=1,minimum-scale=1,maximum-scale=10,user-scalable=yes">

      <title>{block name='head_title'}{$page.meta.title}{/block}</title>

      {block name='head_seo_description'}
        {if $page.meta.description}<meta name="description" content="{$page.meta.description}">{/if}
      {/block}

      {block name='head_icons'}
        <link rel="icon" type="image/vnd.microsoft.icon" href="{$shop.favicon}?{$shop.favicon_update_time}">
        <link rel="shortcut icon" type="image/x-icon" href="{$shop.favicon}?{$shop.favicon_update_time}">
      {/block}

      <link rel="preconnect" href="https://code.jquery.com">
      <link rel="dns-prefetch" href="https://code.jquery.com">
      <link rel="preload" href="https://code.jquery.com/jquery-3.7.1.min.js" as="script" crossorigin="anonymous">

      {block name='stylesheets'}
        {foreach $stylesheets.external as $stylesheet}
          <link rel="stylesheet" href="{$stylesheet.uri}" type="text/css" media="{$stylesheet.media}">
        {/foreach}
      {/block}

      <script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>

      {block name='javascript_head'}
        {if isset($javascript) && isset($javascript.head) && isset($javascript.head.external)}
          {foreach $javascript.head.external as $js}
            <script type="text/javascript" src="{$js.uri|escape:'html':'UTF-8'}" {if $js.attribute}{$js.attribute|escape:'html':'UTF-8'}{/if}></script>
          {/foreach}
        {/if}
      {/block}

    {/block}
  </head>

  <body>
    {block name='header'}
      {include file='_partials/header.tpl'}
    {/block}

    <main>
      {block name='notifications'}
        {include file='_partials/notifications.tpl'}
      {/block}

      {block name='content'}
        <div class="content-wrapper">
          <p>Hello world! This is PS Theme.</p>
        </div>
      {/block}
    </main>

    {block name='footer'}
      {include file='_partials/footer.tpl'}
    {/block}

    {block name='javascript_bottom'}
      {if isset($javascript) && isset($javascript.bottom) && isset($javascript.bottom.external)}
        {foreach $javascript.bottom.external as $js}
          <script type="text/javascript" src="{$js.uri|escape:'html':'UTF-8'}" {if $js.attribute}{$js.attribute|escape:'html':'UTF-8'}{/if}></script>
        {/foreach}
      {/if}
    {/block}

    {hook h='displayBeforeBodyClosingTag'}

  </body>
</html>
