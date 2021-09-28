module Tailwindcss
  class Engine < ::Rails::Engine
    config.app_generators do |g|
      g.template_engine :tailwindcss
    end
  end
end