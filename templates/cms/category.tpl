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
  {$cms_category.name}
{/block}

{block name='page_content'}
  {if $cms_category.description}
    <div class="cms-category-description">
      {$cms_category.description nofilter}
    </div>
  {/if}

  {if $sub_categories}
    <div class="cms-subcategories">
      <h3>{l s='Subcategories' d='Shop.Theme.Global'}</h3>
      <ul>
        {foreach from=$sub_categories item=subcategory}
          <li>
            <a href="{$subcategory.link}">
              {$subcategory.name}
              <span class="count">({$subcategory.pages_count})</span>
            </a>
          </li>
        {/foreach}
      </ul>
    </div>
  {/if}

  {if $cms_pages}
    <div class="cms-pages">
      <h3>{l s='Pages in this category' d='Shop.Theme.Global'}</h3>
      <ul>
        {foreach from=$cms_pages item=cms_page}
          <li>
            <a href="{$cms_page.link}">
              {$cms_page.meta_title}
            </a>
          </li>
        {/foreach}
      </ul>
    </div>
  {/if}
{/block}
