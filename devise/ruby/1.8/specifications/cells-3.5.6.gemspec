# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{cells}
  s.version = "3.5.6"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Nick Sutterer"]
  s.date = %q{2011-03-23}
  s.description = %q{Cells are view components for Rails. They are lightweight controllers, can be rendered in views and thus provide an elegant and fast way for encapsulation and component-orientation.}
  s.email = ["apotonick@gmail.com"]
  s.files = [".gitignore", "CHANGES.textile", "Gemfile", "README.rdoc", "Rakefile", "about.yml", "cells.gemspec", "lib/cell.rb", "lib/cell/caching.rb", "lib/cell/rails.rb", "lib/cell/test_case.rb", "lib/cells.rb", "lib/cells/cells.rake", "lib/cells/rails.rb", "lib/cells/rails_compat.rb", "lib/cells/railtie.rb", "lib/cells/version.rb", "lib/generators/USAGE", "lib/generators/cells/base.rb", "lib/generators/cells/cell_generator.rb", "lib/generators/cells/view_generator.rb", "lib/generators/erb/cell_generator.rb", "lib/generators/haml/cell_generator.rb", "lib/generators/rails/cell_generator.rb", "lib/generators/slim/cell_generator.rb", "lib/generators/templates/cell.rb", "lib/generators/templates/cell_test.rb", "lib/generators/templates/view.erb", "lib/generators/templates/view.haml", "lib/generators/templates/view.slim", "lib/generators/test_unit/cell_generator.rb", "test/active_helper_test.rb", "test/app/cells/bad_guitarist/_dii.html.erb", "test/app/cells/bad_guitarist_cell.rb", "test/app/cells/bassist/_dii.html.erb", "test/app/cells/bassist/ahem.html.erb", "test/app/cells/bassist/compose.html.erb", "test/app/cells/bassist/contact_form.html.erb", "test/app/cells/bassist/jam.html.erb", "test/app/cells/bassist/play.html.erb", "test/app/cells/bassist/play.js.erb", "test/app/cells/bassist/pose.html.erb", "test/app/cells/bassist/promote.html.erb", "test/app/cells/bassist/provoke.html.erb", "test/app/cells/bassist/sing.html.haml", "test/app/cells/bassist/slap.html.erb", "test/app/cells/bassist/yell.en.html.erb", "test/app/cells/bassist_cell.rb", "test/app/cells/layouts/b.erb", "test/app/cells/layouts/metal.html.erb", "test/app/cells/producer/capture.html.erb", "test/app/cells/producer/content_for.html.erb", "test/app/cells/trumpeter/promote.html.erb", "test/app/cells/trumpeter_cell.rb", "test/cell_generator_test.rb", "test/cell_module_test.rb", "test/cells_module_test.rb", "test/dummy/Rakefile", "test/dummy/app/controllers/application_controller.rb", "test/dummy/app/controllers/musician_controller.rb", "test/dummy/app/helpers/application_helper.rb", "test/dummy/app/views/layouts/application.html.erb", "test/dummy/app/views/musician/featured.html.erb", "test/dummy/app/views/musician/featured_with_block.html.erb", "test/dummy/app/views/musician/hamlet.html.haml", "test/dummy/config.ru", "test/dummy/config/application.rb", "test/dummy/config/boot.rb", "test/dummy/config/database.yml", "test/dummy/config/environment.rb", "test/dummy/config/environments/development.rb", "test/dummy/config/environments/production.rb", "test/dummy/config/environments/test.rb", "test/dummy/config/locales/en.yml", "test/dummy/config/routes.rb", "test/dummy/db/test.sqlite3", "test/dummy/log/production.log", "test/dummy/log/server.log", "test/dummy/public/404.html", "test/dummy/public/422.html", "test/dummy/public/500.html", "test/dummy/public/favicon.ico", "test/dummy/public/javascripts/application.js", "test/dummy/public/javascripts/controls.js", "test/dummy/public/javascripts/dragdrop.js", "test/dummy/public/javascripts/effects.js", "test/dummy/public/javascripts/prototype.js", "test/dummy/public/javascripts/rails.js", "test/dummy/public/stylesheets/.gitkeep", "test/dummy/script/rails", "test/helper_test.rb", "test/rails/caching_test.rb", "test/rails/capture_test.rb", "test/rails/cells_test.rb", "test/rails/integration_test.rb", "test/rails/render_test.rb", "test/rails/router_test.rb", "test/rails/view_test.rb", "test/test_case_test.rb", "test/test_helper.rb"]
  s.homepage = %q{http://cells.rubyforge.org}
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.4.2}
  s.summary = %q{View Components for Rails.}

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<actionpack>, ["~> 3.0.0"])
      s.add_runtime_dependency(%q<railties>, ["~> 3.0.0"])
      s.add_development_dependency(%q<shoulda>, [">= 0"])
      s.add_development_dependency(%q<haml>, [">= 0"])
      s.add_development_dependency(%q<slim>, [">= 0"])
    else
      s.add_dependency(%q<actionpack>, ["~> 3.0.0"])
      s.add_dependency(%q<railties>, ["~> 3.0.0"])
      s.add_dependency(%q<shoulda>, [">= 0"])
      s.add_dependency(%q<haml>, [">= 0"])
      s.add_dependency(%q<slim>, [">= 0"])
    end
  else
    s.add_dependency(%q<actionpack>, ["~> 3.0.0"])
    s.add_dependency(%q<railties>, ["~> 3.0.0"])
    s.add_dependency(%q<shoulda>, [">= 0"])
    s.add_dependency(%q<haml>, [">= 0"])
    s.add_dependency(%q<slim>, [">= 0"])
  end
end
