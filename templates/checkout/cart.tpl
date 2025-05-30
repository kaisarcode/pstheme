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

{extends file='page.tpl'}

{block name='page_title'}
  {l s='Shopping Cart' d='Shop.Theme.Checkout'}
{/block}

{block name='page_content'}
  <div class="cart-container">
    <div class="cart-overview">
      {block name='cart_overview'}
        {include file='checkout/_partials/cart-detailed.tpl' cart=$cart}
      {/block}
    </div>

    <div class="cart-summary">
      {block name='cart_summary'}
        {render file='checkout/_partials/cart-summary.tpl' cart=$cart}
      {/block}

      {block name='cart_actions'}
        <div class="cart-actions">
          <div class="continue-shopping">
            <a href="{$urls.pages.index}">
              {l s='Continue shopping' d='Shop.Theme.Actions'}
            </a>
          </div>

          <div class="checkout">
            <a href="{$urls.pages.order}" class="btn">
              {l s='Proceed to checkout' d='Shop.Theme.Actions'}
            </a>
          </div>
        </div>
      {/block}

      {block name='hook_shopping_cart_footer'}
        {hook h='displayShoppingCartFooter'}
      {/block}
    </div>

    {block name='hook_shopping_cart'}
      {hook h='displayShoppingCart'}
    {/block}

    {block name='cart_voucher'}
      {include file='checkout/_partials/cart-voucher.tpl'}
    {/block}
  </div>

  {block name='hook_reassurance'}
    {hook h='displayReassurance'}
  {/block}
{/block}
