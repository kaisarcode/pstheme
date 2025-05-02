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

{block name='page_content'}
  <section id="main" itemscope itemtype="https://schema.org/Product">
    <meta itemprop="url" content="{$product.url}">

    {block name='page_header_container'}
      <header class="page-header">
        <h1 itemprop="name">{$product.name}</h1>
      </header>
    {/block}

    {block name='product_container'}
      <div class="product-container">
        {block name='product_left_column'}
          <div class="product-left-column">
            {block name='product_cover_thumbnails'}
              {include file='catalog/_partials/product-cover-thumbnails.tpl'}
            {/block}
          </div>
        {/block}

        {block name='product_right_column'}
          <div class="product-right-column">
            {block name='page_header'}
              <div class="product-prices">
                {include file='catalog/_partials/product-prices.tpl'}
              </div>
            {/block}

            {block name='product_buy'}
              <div class="product-actions">
                {include file='catalog/_partials/product-add-to-cart.tpl'}
              </div>
            {/block}

            {block name='product_description_short'}
              <div id="product-description-short" itemprop="description">
                {$product.description_short nofilter}
              </div>
            {/block}

            {block name='product_variants'}
              {include file='catalog/_partials/product-variants.tpl'}
            {/block}

            {block name='hook_display_reassurance'}
              {hook h='displayReassurance'}
            {/block}
          </div>
        {/block}

        {block name='product_info'}
          <div class="product-information">
            {block name='product_description'}
              <div class="product-description">
                <h3>{l s='Description' d='Shop.Theme.Catalog'}</h3>
                {$product.description nofilter}
              </div>
            {/block}

            {block name='product_details'}
              {include file='catalog/_partials/product-details.tpl'}
            {/block}

            {block name='product_attachments'}
              {if $product.attachments}
                <div class="product-attachments">
                  <h3>{l s='Download' d='Shop.Theme.Actions'}</h3>
                  {foreach from=$product.attachments item=attachment}
                    <div class="attachment">
                      <a href="{url entity='attachment' params=['id_attachment' => $attachment.id_attachment]}">
                        {$attachment.name}
                      </a>
                      <p>{$attachment.description}</p>
                    </div>
                  {/foreach}
                </div>
              {/if}
            {/block}
          </div>
        {/block}
      </div>
    {/block}

    {block name='product_accessories'}
      {if $accessories}
        <section class="product-accessories">
          <h3>{l s='You might also like' d='Shop.Theme.Catalog'}</h3>
          {include file='catalog/_partials/productlist.tpl' products=$accessories}
        </section>
      {/if}
    {/block}

    {block name='product_footer'}
      {hook h='displayFooterProduct' product=$product category=$category}
    {/block}
  </section>
{/block}
