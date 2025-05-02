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
  <h1>{l s='Order details' d='Shop.Theme.Customeraccount'}</h1>
{/block}

{block name='page_content'}
  {block name='order_infos'}
    <section>
      <p>
        <strong>
          {l
            s='Order Reference %reference% - placed on %date%'
            d='Shop.Theme.Customeraccount'
            sprintf=['%reference%' => $order.details.reference, '%date%' => $order.details.order_date]
          }
        </strong>
      </p>
      {if $order.details.reorder_url}
        <p><a href="{$order.details.reorder_url}">{l s='Reorder' d='Shop.Theme.Actions'}</a></p>
      {/if}

      <ul>
        {if $order.carrier.name}
          <li><strong>{l s='Carrier' d='Shop.Theme.Checkout'}</strong> {$order.carrier.name}</li>
        {/if}
        <li><strong>{l s='Payment method' d='Shop.Theme.Checkout'}</strong> {$order.details.payment}</li>
        {if $order.details.invoice_url}
          <li><a href="{$order.details.invoice_url}">{l s='Download your invoice as a PDF file.' d='Shop.Theme.Customeraccount'}</a></li>
        {/if}
        {if $order.details.recyclable}
          <li>{l s='You have given permission to receive your order in recycled packaging.' d='Shop.Theme.Customeraccount'}</li>
        {/if}
        {if $order.details.gift_message}
          <li>{l s='You have requested gift wrapping for this order.' d='Shop.Theme.Customeraccount'}</li>
          <li>{l s='Message' d='Shop.Theme.Customeraccount'} {$order.details.gift_message nofilter}</li>
        {/if}
      </ul>
    </section>
  {/block}

  {block name='order_history'}
    <section>
      <h2>{l s='Follow your order\'s status step-by-step' d='Shop.Theme.Customeraccount'}</h2>
      <table>
        <thead>
          <tr>
            <th>{l s='Date' d='Shop.Theme.Global'}</th>
            <th>{l s='Status' d='Shop.Theme.Global'}</th>
          </tr>
        </thead>
        <tbody>
          {foreach from=$order.history item=state}
            <tr>
              <td>{$state.history_date}</td>
              <td>{$state.ostate_name}</td>
            </tr>
          {/foreach}
        </tbody>
      </table>
    </section>
  {/block}

  {if $order.follow_up}
    <section>
      <p>{l s='Click the following link to track the delivery of your order' d='Shop.Theme.Customeraccount'}</p>
      <p><a href="{$order.follow_up}">{$order.follow_up}</a></p>
    </section>
  {/if}

  {block name='addresses'}
    <section>
      <div>
        {if $order.addresses.delivery}
          <article>
            <h2>{l s='Delivery address %alias%' d='Shop.Theme.Checkout' sprintf=['%alias%' => $order.addresses.delivery.alias]}</h2>
            <address>{$order.addresses.delivery.formatted nofilter}</address>
          </article>
        {/if}

        <article>
          <h2>{l s='Invoice address %alias%' d='Shop.Theme.Checkout' sprintf=['%alias%' => $order.addresses.invoice.alias]}</h2>
          <address>{$order.addresses.invoice.formatted nofilter}</address>
        </article>
      </div>
    </section>
  {/block}

  {$HOOK_DISPLAYORDERDETAIL nofilter}

  {block name='order_detail'}
    {if $order.details.is_returnable && !$orderIsVirtual}
      {include file='customer/_partials/order-detail-return.tpl'}
    {else}
      {include file='customer/_partials/order-detail-no-return.tpl'}
    {/if}
  {/block}

  {block name='order_carriers'}
    {if $order.shipping}
      <section>
        <h2>{l s='Shipping' d='Shop.Theme.Checkout'}</h2>
        <table>
          <thead>
            <tr>
              <th>{l s='Date' d='Shop.Theme.Global'}</th>
              <th>{l s='Carrier' d='Shop.Theme.Checkout'}</th>
              <th>{l s='Weight' d='Shop.Theme.Checkout'}</th>
              <th>{l s='Shipping cost' d='Shop.Theme.Checkout'}</th>
              <th>{l s='Tracking number' d='Shop.Theme.Checkout'}</th>
            </tr>
          </thead>
          <tbody>
            {foreach from=$order.shipping item=line}
              <tr>
                <td>{$line.shipping_date}</td>
                <td>{$line.carrier_name}</td>
                <td>{$line.shipping_weight}</td>
                <td>{$line.shipping_cost}</td>
                <td>{$line.tracking nofilter}</td>
              </tr>
            {/foreach}
          </tbody>
        </table>
      </section>
    {/if}
  {/block}

  {block name='order_messages'}
    {include file='customer/_partials/order-messages.tpl'}
  {/block}
{/block}