# PSTheme - PrestaShop 8 Base Theme

## Description

PSTheme is a barebones starter theme for PrestaShop 8, created as a clean foundation for custom theme development. It implements only the essential structure and templates required by PrestaShop, without any unnecessary styling or complexity, making it ideal for developers who want full control over their shop’s design from the ground up.

## Features

- Minimal, unstyled base for rapid custom theme development.
- Fully compatible with PrestaShop 8.x.
- Includes all required template files and structure according to PrestaShop standards.
- Provides essential templates for products, checkout, customer accounts, and error pages.
- Clean, readable code designed for easy maintenance and customization.
- No legacy or extraneous code-start with a clean slate.

## Installation

1. Download or clone the repository into the `/themes` directory of your PrestaShop installation:
   ```
   git clone git@github.com:kaisarcode/pstheme.git
   ```
2. Ensure the theme folder is named `pstheme`.
3. Log in to your PrestaShop back office.
4. Navigate to `Design > Theme & Logo`.
5. Click on "Add new theme" and select `pstheme` from the available themes.
6. Set `pstheme` as the active theme.

## Development

- Use PSTheme as a foundation to build your own custom PrestaShop theme.
- All basic templates and folder structures are included, following PrestaShop’s recommended standards.
- Templates are organized and use Smarty blocks for easy extension and customization.
- No unnecessary CSS or JavaScript is included-add only what your project needs.

## Uninstallation

1. Log in to your PrestaShop back office.
2. Navigate to `Design > Theme & Logo`.
3. Switch to another theme.
4. Optionally, delete the `pstheme` folder from the `/themes` directory.

## Recommended Workflow

The recommended workflow for customizing PSTheme is to create a **child theme** rather than modifying the base theme directly. This approach allows you to:

- Safely update the base PSTheme without losing your customizations.
- Keep your code organized and maintainable.
- Customize only what you need, while inheriting everything else from the parent theme.

To create a child theme, follow these steps:

1. **Create the Child Theme Folder**
   - Inside the `/themes` directory, create a new folder for your child theme (e.g., `pstheme_child`).

2. **Create the `theme.yml` File**
   - In your child theme folder, add a `theme.yml` file with the following content:

   ```
   parent: pstheme
   name: pstheme_child
   display_name: PSTheme Child
   version: 1.0.0
   author:
     name: KaisarCode
     email: kaisar@kaisarcode.com
     url: https://kaisarcode.com
   assets:
     use_parent_assets: true
   ```

3. **Add a Preview Image**
   - Place a `preview.png` (100x100 px) in your child theme folder.

4. **Override or Add Files as Needed**
   - Only include files you want to customize or add, such as templates or assets.
   - To extend templates, use Smarty’s `{extends file='parent:...'}` syntax.

5. **Activate the Child Theme**
   - In the PrestaShop back office, go to `Design > Theme & Logo` and activate your child theme.

By using a child theme, you ensure your customizations are future-proof and easy to maintain.

## License

This theme is licensed under the Academic Free License (AFL 3.0).

## Author

- KaisarCode <kaisar@kaisarcode.com>
- Website: https://kaisarcode.com
