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
<div class="js-address-form">
  {include file='_partials/form-errors.tpl' errors=$errors}

  {block name='address_form_url'}
    <form
      method="POST"
      action="{url entity='address' params=['id_address' => $id_address]}"
      data-id-address="{$id_address}"
      data-refresh-url="{url entity='address' params=['ajax' => 1, 'action' => 'addressForm']}"
    >
  {/block}

    {block name='address_form_fields'}
      <section class="form-fields">
        {block name='address_form_fields_input'}
          {foreach from=$formFields item="field"}
            {block name='form_field'}
              {include file='_partials/form-fields.tpl' field=$field}
            {/block}
          {/foreach}
        {/block}
      </section>
    {/block}

    {block name='address_form_footer'}
      <footer class="form-footer">
        <input type="hidden" name="submitAddress" value="1">
        {block name='form_buttons'}
          <button class="btn btn-primary" type="submit">
            {l s='Save' d='Shop.Theme.Actions'}
          </button>
        {/block}
      </footer>
    {/block}

  </form>
</div>