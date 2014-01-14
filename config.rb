require 'slim'

configure :build do
  activate :minify_css
  activate :minify_javascript
end

activate :deploy do |deploy|
  deploy.method = :git
end

# Silence I18n warning, http://stackoverflow.com/a/20381730
I18n.config.enforce_available_locales = false
