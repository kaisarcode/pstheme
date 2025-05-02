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
  <h1>{l s='Return details' d='Shop.Theme.Customeraccount'}</h1>
{/block}

{block name='page_content'}
  {block name='order_return_infos'}
    <section>
      <p>
        <strong>{l
          s='%number% on %date%'
          d='Shop.Theme.Customeraccount'
          sprintf=['%number%' => $return.return_number, '%date%' => $return.return_date]
        }</strong>
      </p>
      <p>{l s='We have logged your return request.' d='Shop.Theme.Customeraccount'}</p>
      <p>{l
        s='Your package must be returned to us within %number% days of receiving your order.'
        d='Shop.Theme.Customeraccount'
        sprintf=['%number%' => $configuration.number_of_days_for_return]
      }</p>
      <p>
        {l
          s='Current status: [1]%status%[/1]'
          d='Shop.Theme.Customeraccount'
          sprintf=[
            '[1]' => '<strong>',
            '[/1]' => '</strong>',
            '%status%' => $return.state_name
          ]
        }
      </p>

      <h2>{l s='List of items to be returned:' d='Shop.Theme.Customeraccount'}</h2>
      <table>
        <thead>
          <tr>
            <th>{l s='Product' d='Shop.Theme.Catalog'}</th>
            <th>{l s='Quantity' d='Shop.Theme.Checkout'}</th>
          </tr>
        </thead>
        <tbody>
          {foreach from=$products item=product}
            <tr>
              <td>
                <strong>{$product.product_name}</strong>
                {if $product.product_reference}
                  <br>
                  {l s='Reference' d='Shop.Theme.Catalog'}: {$product.product_reference}
                {/if}
                {if $product.customizations}
                  {foreach from=$product.customizations item="customization"}
                    <div class="customization">
                      <a href="#" data-toggle="modal" data-target="#product-customizations-modal-{$customization.id_customization}">{l s='Product customization' d='Shop.Theme.Catalog'}</a>
                    </div>
                  {/foreach}
                {/if}
              </td>
              <td>{$product.product_quantity}</td>
            </tr>
          {/foreach}
        </tbody>
      </table>
    </section>

    {if $return.state == 2}
      <section>
        <h2>{l s='Reminder' d='Shop.Theme.Customeraccount'}</h2>
        <p>
          {l s='All merchandise must be returned in its original packaging and in its original state.' d='Shop.Theme.Customeraccount'}
        </p>
        <p>
          {l
            s='Please print out the [1]returns form[/1] and include it with your package.'
            d='Shop.Theme.Customeraccount'
            sprintf=[
              '[1]' => '<a href="'|cat:$return.print_url|cat:'">',
              '[/1]' => '</a>'
            ]
          }
        </p>
        <p>
          {l
            s='Please check the [1]returns form[/1] for the correct address.'
            d='Shop.Theme.Customeraccount'
            sprintf=[
              '[1]' => '<a href="'|cat:$return.print_url|cat:'">',
              '[/1]' => '</a>'
            ]
          }
        </p>
        <p>
          {l
            s='When we receive your package, we will notify you by email. We will then begin processing order reimbursement.'
            d='Shop.Theme.Customeraccount'
          }
        </p>
        <p>
          <a href="{$urls.pages.contact}">
            {l s='Please let us know if you have any questions.' d='Shop.Theme.Customeraccount'}
          </a>
        </p>
        <p>
          {l
            s='If the conditions of return listed above are not respected, we reserve the right to refuse your package and/or reimbursement.'
            d='Shop.Theme.Customeraccount'
          }
        </p>
      </section>
    {/if}
  {/block}
{/block}