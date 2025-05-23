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

{extends file='layouts/layout-error.tpl'}

{block name='content'}
  <section class="error-page">
    <h1>{$shop.name}</h1>
    <h2>{l s='404 Not Found' d='Shop.Theme.Global'}</h2>
    <h4>{l s='This page could not be found' d='Shop.Theme.Global'}</h4>
    <p>{l s='Try to search our catalog, you may find what you are looking for!' d='Shop.Theme.Global'}</p>
    {block name='search'}
      {hook h='displaySearch'}
    {/block}
    {block name='hook_not_found'}
      {hook h='displayNotFound'}
    {/block}
  </section>
{/block}