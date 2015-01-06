ready do
  sprockets.append_path File.join root, 'bower_components'
end

set :css_dir, 'css'
set :js_dir, 'js'

configure :build do
  #activate :minify_html
  #activate :minify_css
  #activate :minify_javascript
end

activate :deploy do |deploy|
  deploy.method = :git
end
