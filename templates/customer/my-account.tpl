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
  {l s='Your account' d='Shop.Theme.Customeraccount'}
{/block}

{block name='page_content'}
  <div class="row">
    <div class="links">
      <a class="col-lg-4" id="identity-link" href="{$urls.pages.identity}">
        <span class="link-item">
          {l s='Information' d='Shop.Theme.Customeraccount'}
        </span>
      </a>

      {if $customer.addresses|count}
        <a class="col-lg-4" id="addresses-link" href="{$urls.pages.addresses}">
          <span class="link-item">
            {l s='Addresses' d='Shop.Theme.Customeraccount'}
          </span>
        </a>
      {else}
        <a class="col-lg-4" id="address-link" href="{$urls.pages.address}">
          <span class="link-item">
            {l s='Add first address' d='Shop.Theme.Customeraccount'}
          </span>
        </a>
      {/if}

      <a class="col-lg-4" id="history-link" href="{$urls.pages.history}">
        <span class="link-item">
          {l s='Order history and details' d='Shop.Theme.Customeraccount'}
        </span>
      </a>

      {if !$configuration.is_catalog}
        <a class="col-lg-4" id="order-slips-link" href="{$urls.pages.order_slip}">
          <span class="link-item">
            {l s='Credit slips' d='Shop.Theme.Customeraccount'}
          </span>
        </a>
      {/if}

      {if $configuration.voucher_enabled && !$configuration.is_catalog}
        <a class="col-lg-4" id="discounts-link" href="{$urls.pages.discount}">
          <span class="link-item">
            {l s='Vouchers' d='Shop.Theme.Customeraccount'}
          </span>
        </a>
      {/if}

      {if $configuration.return_enabled && !$configuration.is_catalog}
        <a class="col-lg-4" id="returns-link" href="{$urls.pages.order_follow}">
          <span class="link-item">
            {l s='Merchandise returns' d='Shop.Theme.Customeraccount'}
          </span>
        </a>
      {/if}

      {block name='display_customer_account'}
        {hook h='displayCustomerAccount'}
      {/block}
    </div>
  </div>
{/block}
