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
  {l s='Order history' d='Shop.Theme.Customeraccount'}
{/block}

{block name='page_content'}
  <h6>{l s='Here are the orders you\'ve placed since your account was created.' d='Shop.Theme.Customeraccount'}</h6>

  {if $orders}
    <table>
      <thead>
        <tr>
          <th>{l s='Order reference' d='Shop.Theme.Checkout'}</th>
          <th>{l s='Date' d='Shop.Theme.Checkout'}</th>
          <th>{l s='Total price' d='Shop.Theme.Checkout'}</th>
          <th>{l s='Payment' d='Shop.Theme.Checkout'}</th>
          <th>{l s='Status' d='Shop.Theme.Checkout'}</th>
          <th>{l s='Invoice' d='Shop.Theme.Checkout'}</th>
          <th>&nbsp;</th>
        </tr>
      </thead>
      <tbody>
        {foreach from=$orders item=order}
          <tr>
            <td>{$order.reference}</td>
            <td>{$order.date_add}</td>
            <td>{$order.totals.total.value}</td>
            <td>{$order.payment}</td>
            <td>
              <span class="order-status" style="background-color:{$order.history.current.color}">
                {$order.history.current.ostate_name}
              </span>
            </td>
            <td>
              {if $order.details.invoice_url}
                <a href="{$order.details.invoice_url}">
                  {l s='Download' d='Shop.Theme.Actions'}
                </a>
              {else}
                -
              {/if}
            </td>
            <td>
              <a href="{$order.details.details_url}">
                {l s='Details' d='Shop.Theme.Customeraccount'}
              </a>
              {if $order.details.reorder_url}
                <a href="{$order.details.reorder_url}">
                  {l s='Reorder' d='Shop.Theme.Actions'}
                </a>
              {/if}
            </td>
          </tr>
        {/foreach}
      </tbody>
    </table>
  {else}
    <div class="alert alert-info" role="alert" data-alert="info">
      {l s='You have not placed any orders.' d='Shop.Notifications.Warning'}
    </div>
  {/if}
{/block}
