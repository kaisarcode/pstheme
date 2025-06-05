/**
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
 * @author    PrestaShop SA and Contributors <contact@prestashop.com>
 * @copyright Since 2007 PrestaShop SA and Contributors
 * @license   https://opensource.org/licenses/AFL-3.0 Academic Free License 3.0 (AFL-3.0)
 */

var theme = {};
window.prestashop = window.prestashop || {};

(function(prestashop) {
  const events = {};

  // Define event emitter
  prestashop.emit = function(eventName, eventData) {
    if (!events[eventName]) return;
    events[eventName].forEach(callback => {
      if (typeof callback === 'function') {
        callback(eventData);
      }
    });
  };

  //Define event listener
  prestashop.on = function(eventName, callback) {
    if (!events[eventName]) {
      events[eventName] = [];
    }
    events[eventName].push(callback);
  };
})(window.prestashop);

$(document).ready(() => {

  // Update cart when it changes
  prestashop.on('updateCart', (event) => {
    if (!event.reason || event.reason.linkAction !== 'refresh') {
      location.reload();
    }
  });

  // Handle product quantity forms
  $('body').on('change', 'input.qty', (event) => {
    const target = $(event.currentTarget);
    const minQuantity = parseInt(target.attr('min'), 10);
    const maxQuantity = parseInt(target.attr('max'), 10);
    const quantity = parseInt(target.val(), 10);

    if (quantity <= 0 || isNaN(quantity)) {
      target.val(minQuantity);
    } else if (quantity > maxQuantity) {
      target.val(maxQuantity);
    }
  });

  // Handle clicks on add to cart buttons
  $('body').on('click', '[data-button-action="add-to-cart"]', (event) => {
    event.preventDefault();
    const $button = $(event.currentTarget);
    const $form = $button.closest('form');

    if ($form.length) {
      $form.submit();
    }
  });
});

// Make theme available globally
window.theme = theme;
