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

{extends file='customer/page.tpl'}

{block name='page_title'}
  {l s='Your addresses' d='Shop.Theme.Customeraccount'}
{/block}

{block name='page_content'}
  <div class="address-links">
    <a href="{$urls.pages.address}" class="btn" data-link-action="add-address">
      {l s='Create new address' d='Shop.Theme.Actions'}
    </a>
  </div>

  {if $customer.addresses}
    <div class="addresses-wrapper">
      {foreach $customer.addresses as $address}
        <article class="address-item">
          <div class="address-box">
            <h4>{$address.alias}</h4>
            <address>{$address.formatted nofilter}</address>
          </div>
          
          <div class="address-footer">
            <a href="{url entity=address id=$address.id}" class="btn" data-link-action="edit-address">
              {l s='Edit' d='Shop.Theme.Actions'}
            </a>
            <a href="{url entity=address id=$address.id params=['delete' => 1, 'token' => $token]}" 
               class="btn" 
               data-link-action="delete-address"
               onclick="return confirm('{l s='Are you sure?' d='Shop.Theme.Actions'}');">
              {l s='Delete' d='Shop.Theme.Actions'}
            </a>
          </div>
        </article>
      {/foreach}
    </div>
  {else}
    <p class="alert alert-info">
      {l s='No addresses are available.' d='Shop.Notifications.Warning'}
    </p>
  {/if}
{/block}
