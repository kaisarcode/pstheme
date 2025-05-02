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

{extends file='customer/order-detail.tpl'}

{block name='page_title'}
  {l s='Guest Order Tracking' d='Shop.Theme.Customeraccount'}
{/block}

{block name='order_messages'}
  {if !$is_customer}
    <div class="order-message-form">
      <p>
        {l s='Create an account to follow your order more easily.' d='Shop.Theme.Customeraccount'}
      </p>
      
      {if !$empty_address_required}
        <form action="{$urls.pages.guest_tracking}" method="post">
          <div class="form-group">
            <label for="guest_to_customer_email">{l s='Set your password:' d='Shop.Forms.Labels'}</label>
            <input type="password" 
                   class="form-control" 
                   name="password" 
                   id="guest_to_customer_password" 
                   required>
          </div>
          
          <input type="hidden" name="id_order" value="{$order.details.id}">
          <input type="hidden" name="order_reference" value="{$order.details.reference}">
          <input type="hidden" name="email" value="{$guest_email}">
          
          <button type="submit" class="btn btn-primary" name="submitTransformGuestToCustomer">
            {l s='Create account' d='Shop.Theme.Actions'}
          </button>
        </form>
      {else}
        <p class="warning">
          {l s='Please set a delivery address before creating an account.' d='Shop.Theme.Customeraccount'}
        </p>
      {/if}
    </div>
  {/if}
  {block name='my_account_links'}
    <a href="{$urls.pages.guest_tracking}" class="account-link">
      <span>{l s='Back to guest tracking' d='Shop.Theme.Customeraccount'}</span>
    </a>
  {/block}
{/block}
