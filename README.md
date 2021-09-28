# Tailwind CSS for Rails webpacker

[Tailwind CSS](https://tailwindcss.com) is a utility-first CSS framework packed with classes like flex, pt-4, text-center and rotate-90 that can be composed to build any design, directly in your markup.

This gem gives access to the standard Tailwind CSS framework configured for Rails webpacker.

This is extraction originally created inside the [tailwindcss-rails](https://github.com/rails/tailwindcss-rails) gem.

Gem overrides default Rails scaffold generators in favour of Tailwind
designed templates by Adam Wathan and the Tailwind team.


## Installation

1. Run `./bin/bundle add tailwindcss-rails-webpacker`
2. Run `./bin/rails tailwindcss:install`


## Purging in production

The Tailwind CSS framework starts out as a massive file, which gives you all the combinations of utility classes for development, but you wouldn't want to ship all those unused classes in production.

This gem will automatically purge those unused classes in production.

## License

Tailwind for Rails Webpacker is released under the [MIT License](https://opensource.org/licenses/MIT).
Tailwind CSS is released under the [MIT License](https://opensource.org/licenses/MIT).
