WEBPACK_STYLESHEETS_PATH = "#{Webpacker.config.source_path}/stylesheets"
APPLICATION_LAYOUT_PATH  = Rails.root.join("app/views/layouts/application.html.erb")

say "Installing Tailwind CSS"
run "yarn add tailwindcss@latest postcss@latest autoprefixer@latest webpack-dev-server@3.11.2"
insert_into_file "#{Webpacker.config.source_entry_path}/application.js", "\nimport \"stylesheets/application\"\n"

say "Configuring Tailwind CSS"
directory Pathname.new(__dir__).join("stylesheets"), Webpacker.config.source_path.join("stylesheets")

insert_into_file "postcss.config.js", "require('tailwindcss')(\"./app/javascript/stylesheets/tailwind.config.js\"),\n    ",
                 before: "require('postcss-import')"


if APPLICATION_LAYOUT_PATH.exist?
  say "Add Tailwindcss include tags in application layout"
  insert_into_file Rails.root.join("app/views/layouts/application.html.erb").to_s, %(\n    <%= stylesheet_pack_tag "application", "data-turbo-track": "reload" %>), before: /\s*<\/head>/
else
  say "Default application.html.erb is missing!", :red
  say %(        Add <%= stylesheet_pack_tag "application", "data-turbo-track": "reload" %> within the <head> tag in your custom layout.)
end