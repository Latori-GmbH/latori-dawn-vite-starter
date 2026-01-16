curl -L -O https://github.com/Shopify/dawn/archive/main.zip
mkdir .cache
mv main.zip .cache/main.zip
cd .cache
unzip main.zip
if [ ! $1 = "update" ]
then
  mkdir ../assets
  mkdir ../config
  mkdir ../layout
  mkdir ../locales
  mkdir ../sections
  mkdir ../snippets
  mkdir ../templates
fi
\cp -R dawn-main/assets/ ../assets
\cp -R dawn-main/config/ ../config
\cp -R dawn-main/layout/ ../layout
\cp -R dawn-main/locales/ ../locales
\cp -R dawn-main/sections/ ../sections
\cp -R dawn-main/snippets/ ../snippets
\cp -R dawn-main/templates/ ../templates
cd ..

# Download is-land script
curl -L -o assets/is-land.js https://unpkg.com/@11ty/is-land

# Add is-land script to theme.liquid
sed -i '' '/<script src="{{ '\''search-form.js'\'' | asset_url }}" defer="defer"><\/script>/a\
    <script src="{{ '\''is-land.js'\'' | asset_url }}" defer="defer" type="module"></script>\
' layout/theme.liquid

rm -R .cache