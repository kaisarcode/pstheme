/**
 * PS Theme JavaScript
 */

// Define theme object
var theme = {};

/**
 * Theme initialization
 */
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
