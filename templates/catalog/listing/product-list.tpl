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
  <section id="products">
    {if $listing.products|count}
      {block name='product_list_header'}
        <h1>{$listing.label}</h1>
      {/block}

      {block name='product_list_top'}
        {include file='catalog/_partials/products-top.tpl' listing=$listing}
      {/block}

      {block name='product_list_active_filters'}
        {$listing.rendered_active_filters nofilter}
      {/block}

      {block name='product_list'}
        {include file='catalog/_partials/products.tpl' listing=$listing productClass="col-xs-12 col-sm-6 col-xl-4"}
      {/block}

      {block name='product_list_bottom'}
        {include file='catalog/_partials/products-bottom.tpl' listing=$listing}
      {/block}
    {else}
      <div class="alert alert-warning">
        {l s='No products available yet' d='Shop.Theme.Catalog'}
      </div>
    {/if}
  </section>

  {block name='product_list_footer'}{/block}

  {hook h="displayFooterCategory"}
{/block}
