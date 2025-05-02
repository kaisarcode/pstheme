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
  {l s='Our stores' d='Shop.Theme.Global'}
{/block}

{block name='page_content'}
  <section class="stores-page">
    {foreach $stores as $store}
      <article class="store-item">
        <div class="store-header">
          {if $store.image}
            <div class="store-picture">
              <picture>
                {if !empty($store.image.bySize.stores_default.sources.avif)}<source srcset="{$store.image.bySize.stores_default.sources.avif}" type="image/avif">{/if}
                {if !empty($store.image.bySize.stores_default.sources.webp)}<source srcset="{$store.image.bySize.stores_default.sources.webp}" type="image/webp">{/if}
                <img
                  src="{$store.image.bySize.stores_default.url}"
                  {if !empty($store.image.legend)}
                    alt="{$store.image.legend}"
                    title="{$store.image.legend}"
                  {else}
                    alt="{$store.name}"
                  {/if}
                >
              </picture>
            </div>
          {/if}

          <div class="store-description">
            <h2>{$store.name}</h2>
            <address>{$store.address.formatted nofilter}</address>

            {if $store.note || $store.phone || $store.fax || $store.email}
              <div class="store-contact">
                <h3>{l s='About and Contact' d='Shop.Theme.Global'}</h3>
                {if $store.note}
                  <p>{$store.note}</p>
                {/if}
                <ul>
                  {if $store.phone}
                    <li>{l s='Phone:' d='Shop.Theme.Global'} {$store.phone}</li>
                  {/if}
                  {if $store.fax}
                    <li>{l s='Fax:' d='Shop.Theme.Global'} {$store.fax}</li>
                  {/if}
                  {if $store.email}
                    <li>{l s='Email:' d='Shop.Theme.Global'} {$store.email}</li>
                  {/if}
                </ul>
              </div>
            {/if}
          </div>
        </div>

        {if $store.business_hours}
          <div class="store-hours">
            <h3>{l s='Hours' d='Shop.Theme.Global'}</h3>
            <table>
              {foreach $store.business_hours as $day}
                <tr>
                  <th>{$day.day|truncate:4:'.'}</th>
                  <td>
                    <ul>
                      {foreach $day.hours as $hours}
                        <li>{$hours}</li>
                      {/foreach}
                    </ul>
                  </td>
                </tr>
              {/foreach}
            </table>
          </div>
        {/if}
      </article>
    {/foreach}
  </section>
{/block}