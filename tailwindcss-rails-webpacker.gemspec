require_relative "lib/tailwindcss/version"

Gem::Specification.new do |spec|
  spec.name        = "tailwindcss-rails-webpacker"
  spec.version     = Tailwindcss::VERSION
  spec.authors     = [ "Dino Maric", "David Heinemeier Hansson" ]
  spec.email       = ["dinom@hey.com"]
  spec.homepage    = "https://github.com/rails/tailwindcss-rails"
  spec.summary     = "Integrate Tailwind CSS with the Rails webpacker."
  spec.license     = "MIT"

  spec.metadata["homepage_uri"] = spec.homepage

  spec.files = Dir["{app,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  spec.add_dependency "rails", ">= 6.0.0"
end
