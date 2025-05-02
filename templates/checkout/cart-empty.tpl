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

{extends file='checkout/cart.tpl'}

{block name='cart_overview'}
  <div class="cart-empty">
    <p>{l s='There are no more items in your cart' d='Shop.Theme.Checkout'}</p>
  </div>
{/block}

{block name='continue_shopping'}
  <div class="cart-actions">
    <a href="{$urls.pages.index}">{l s='Continue shopping' d='Shop.Theme.Actions'}</a>
  </div>
{/block}

{block name='cart_actions'}
  <div class="checkout">
    <button type="button" class="btn" disabled>{l s='Checkout' d='Shop.Theme.Actions'}</button>
  </div>
{/block}

{block name='cart_voucher'}{/block}
{block name='display_reassurance'}{/block}