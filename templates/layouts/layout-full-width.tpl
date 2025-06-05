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
      {include file='_partials/head.tpl'}
    {/block}
  </head>
  <body id="{$page.page_name}" class="{$page.body_classes|classnames}">

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
