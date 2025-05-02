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
{if isset($notifications)}
<aside id="notifications">
  {if $notifications.error}
    <article class="notification notification-error">
      <ul>
        {foreach $notifications.error as $notif}
          <li>{$notif nofilter}</li>
        {/foreach}
      </ul>
    </article>
  {/if}

  {if $notifications.warning}
    <article class="notification notification-warning">
      <ul>
        {foreach $notifications.warning as $notif}
          <li>{$notif nofilter}</li>
        {/foreach}
      </ul>
    </article>
  {/if}

  {if $notifications.success}
    <article class="notification notification-success">
      <ul>
        {foreach $notifications.success as $notif}
          <li>{$notif nofilter}</li>
        {/foreach}
      </ul>
    </article>
  {/if}

  {if $notifications.info}
    <article class="notification notification-info">
      <ul>
        {foreach $notifications.info as $notif}
          <li>{$notif nofilter}</li>
        {/foreach}
      </ul>
    </article>
  {/if}
</aside>
{/if}