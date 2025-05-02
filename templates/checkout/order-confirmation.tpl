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
  {l s='Order confirmation' d='Shop.Theme.Checkout'}
{/block}

{block name='page_content'}
  <section id="order-confirmation">
    <div class="order-confirmation-status">
      <h3>{l s='Your order is confirmed' d='Shop.Theme.Checkout'}</h3>
      <p>
        {l s='An email has been sent to your mail address %email%.' d='Shop.Theme.Checkout' sprintf=['%email%' => $customer.email]}
      </p>
    </div>

    {if !empty($HOOK_ORDER_CONFIRMATION)}
      {$HOOK_ORDER_CONFIRMATION nofilter}
    {/if}

    <div class="order-details">
      <div class="order-reference">
        <strong>{l s='Order reference: %reference%' d='Shop.Theme.Checkout' sprintf=['%reference%' => $order.details.reference]}</strong>
      </div>

      {if !$registered_customer_exists}
        <div class="guest-information">
          <p>
            {l s='Save time on your next order, sign up now' d='Shop.Theme.Checkout'}
          </p>
          <a href="{$urls.pages.register}" class="btn">
            {l s='Create an account' d='Shop.Theme.Actions'}
          </a>
        </div>
      {/if}
    </div>

    {if $HOOK_PAYMENT_RETURN}
      <div class="payment-return">
        {$HOOK_PAYMENT_RETURN nofilter}
      </div>
    {/if}

    {if $order.details.recyclable}
      <p>
        {l s='You have given permission to receive your order in recycled packaging.' d='Shop.Theme.Customeraccount'}
      </p>
    {/if}

    {if $order.details.gift_message}
      <p>
        {l s='Message' d='Shop.Theme.Customeraccount'}: {$order.details.gift_message nofilter}
      </p>
    {/if}
  </section>
{/block}
