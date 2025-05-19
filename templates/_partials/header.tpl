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

{block name='header_banner'}
  {if {hook h='displayBanner'}}
  <div class="header-banner">
    {hook h='displayBanner'}
    </div>
  {/if}
{/block}

{block name='header_top'}
  <div class="header-top">
    {hook h='displayTop'}
  </div>
{/block}

{block name='header_nav'}
  <nav class="header-nav">
    <div class="left-nav">
      <a href="{$urls.base_url}" class="store-name">
        {$shop.name}
      </a>
    </div>
    <div class="right-nav">
      <div class="user-info">
        {if $customer.is_logged}
          <a href="{$urls.pages.my_account}" class="account">
            <span>{$customer.firstname}</span>
          </a>
        {else}
          <a href="{$urls.pages.authentication}" class="account">
            {l s='Sign in' d='Shop.Theme.Actions'}
          </a>
        {/if}
      </div>
      <div class="cart-preview">
        <a href="{$urls.pages.cart}">
          {l s='Cart' d='Shop.Theme.Checkout'}
          {if $cart.products_count > 0}
            <span class="cart-products-count">({$cart.products_count})</span>
          {/if}
        </a>
      </div>
    </div>
  </nav>
{/block}
