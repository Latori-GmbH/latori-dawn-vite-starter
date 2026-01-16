# Latori Dawn Vite Starter

This project is a starter template for Shopify theme development based on Dawn and Vite, optimized for Shopify GitHub integration.

## Prerequisites

- Node.js (current LTS version)
- npm or yarn
- Shopify CLI
- A Shopify Partner account and a development store

## Installation

1. Clone the repository:
```bash
git clone [repository-url]
cd latori-dawn-vite-starter
```

2. Install dependencies:
```bash
npm install --legacy-peer-deps
```

3. Initialize the project:
```bash
sh ini.sh
```

This will:
- Download and set up the Dawn theme structure
- Download the is-land script to the assets folder
- Add the is-land script to theme.liquid

## Development

### Start Development Server

```bash
npm run dev
```

This starts the Shopify Theme Development Server with live reload.

### Vite Development Server

```bash
npm run vite
```

This starts the Vite Development Server for frontend development.

### Build

```bash
npm run build
```

This creates the optimized version of your assets.

## Project Structure

The project is structured to work seamlessly with Shopify GitHub integration:

- `_src/` - Source code for your React components and JavaScript (not deployed to Shopify)
- `/` - Compiled assets and Shopify theme files (deployed to Shopify)
  - `snippets/` - Liquid snippets
  - `sections/` - Theme sections
  - `templates/` - Theme templates
  - `assets/` - Static assets
  - `config/` - Theme configuration
  - `layout/` - Theme layouts
  - `locales/` - Translations

## Using is-land

This project uses [is-land](https://github.com/11ty/is-land) for progressive enhancement and partial hydration of components. is-land allows you to add interactive client-side components to your website in a performance-focused way.

The is-land script is automatically added to your theme during initialization. You can use is-land in your templates as follows:

```liquid
<is-land on:visible>
  <template data-island>
    {% render '__BUILD__' with 'hello-world.jsx' %}
  </template>
  <hello-world id="hello-world"></hello-world>
</is-land>
```

### is-land Attributes

- `on:visible` - Loads the component when it becomes visible in the viewport
- `on:idle` - Loads the component when the browser is idle
- `on:interaction` - Loads the component on user interaction
- `on:media` - Loads the component based on media query conditions

### Component Structure

1. Create your React component in `_src/components/`
2. Build it using Vite
3. Include it in your theme using the is-land pattern above

## Deployment

### GitHub Integration

This project is optimized for Shopify GitHub integration. The root directory contains all the files that will be deployed to Shopify. Development files are excluded from deployment using `.shopifyignore`.

1. Connect your GitHub repository to your Shopify store
2. Set up the deployment branch (usually `main` or `master`)
3. Push your changes to the deployment branch
4. Shopify will automatically deploy the contents of the root directory

### Manual Deployment

If you need to deploy manually:

1. Make sure you have built the latest changes:
```bash
npm run build
# or
yarn build
```

2. Deploy the theme to your Shopify store:
```bash
shopify theme push
```

## Support

For questions or issues, please contact:
- Patrick Schneider (patrick.schneider@latori.com)

## License

MIT
