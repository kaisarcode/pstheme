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
  {l s='Guest Order Tracking' d='Shop.Theme.Customeraccount'}
{/block}

{block name='page_content'}
  <form id="guestOrderTrackingForm" action="{$urls.pages.guest_tracking}" method="post">
    <section>
      <p>{l s='To track your order, please enter the following information:' d='Shop.Theme.Customeraccount'}</p>
      
      <div class="form-group">
        <label for="email">{l s='Email' d='Shop.Forms.Labels'}</label>
        <input type="email" 
               class="form-control" 
               id="email" 
               name="email" 
               value="{if isset($smarty.post.email)}{$smarty.post.email}{/if}"
               required>
      </div>

      <div class="form-group">
        <label for="order-reference">{l s='Order Reference:' d='Shop.Forms.Labels'}</label>
        <input type="text" 
               class="form-control" 
               id="order-reference" 
               name="order_reference"
               value="{if isset($smarty.post.order_reference)}{$smarty.post.order_reference}{/if}"
               required>
      </div>

      <footer class="form-footer">
        <button class="btn btn-primary" type="submit" name="submitGuestTracking">
          {l s='Send' d='Shop.Theme.Actions'}
        </button>
      </footer>
    </section>

    <hr>

    <section class="register-form">
      <p>{l s='Create an account to enjoy:' d='Shop.Theme.Customeraccount'}</p>
      <ul>
        <li>{l s='Personalized and secure access' d='Shop.Theme.Customeraccount'}</li>
        <li>{l s='Easy order tracking' d='Shop.Theme.Customeraccount'}</li>
        <li>{l s='Faster checkout process' d='Shop.Theme.Customeraccount'}</li>
      </ul>
      <a href="{$urls.pages.register}" class="btn">
        {l s='Create an account' d='Shop.Theme.Actions'}
      </a>
    </section>
  </form>
{/block}
