def source_paths
  [__dir__]
end

gem "inertia_rails"
gem "vite_rails"

gem_group :development, :test do
  gem "pry-rails"
  gem "pry-byebug"
end

gem_group :development do
  gem "annotate"
  gem "better_errors"
  gem "binding_of_caller"
end

after_bundle do
  run "bundle exec vite install"

  run "rm -fr app/frontend vite.config.ts config/vite.json "

  run "yarn add vue vue-loader vue-template-compiler"
  run "yarn add vite-plugin-vue2 --dev"

  run "yarn add @inertiajs/inertia @inertiajs/inertia-vue @inertiajs/progress"

  copy_file "vite.config.ts"
  copy_file "config/vite.json"

  run "mkdir -p app/javascript/entrypoints"
  run "mkdir -p app/javascript/Pages"
  run "mkdir -p app/javascript/Components"

  copy_file "app/javascript/entrypoints/application.js"
  copy_file "app/controllers/application_controller.rb"
  copy_file "app/controllers/pages_controller.rb"
  copy_file "app/javascript/Pages/Dashboard.vue"
  copy_file "Procfile.dev"

  route 'root to: "pages#index"'
end