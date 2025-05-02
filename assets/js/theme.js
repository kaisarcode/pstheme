/**
 * PS Theme JavaScript
 */

// Asegurarse de que prestashop está disponible
if (typeof prestashop === 'undefined') {
  var prestashop = {};
}

/**
 * Inicialización del tema
 */
$(document).ready(() => {
  // Actualizar carrito cuando cambie
  prestashop.on('updateCart', (event) => {
    if (!event.reason || event.reason.linkAction !== 'refresh') {
      location.reload();
    }
  });

  // Manejar formularios de cantidad de producto
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

  // Manejar clicks en botones de añadir al carrito
  $('body').on('click', '[data-button-action="add-to-cart"]', (event) => {
    event.preventDefault();
    const $button = $(event.currentTarget);
    const $form = $button.closest('form');
    
    if ($form.length) {
      $form.submit();
    }
  });
});

// Exportar para uso con módulos
export default theme;
