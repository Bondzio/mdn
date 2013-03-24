require 'bundler/capistrano'
set :stages, %w(beta web dev)
set :default_stage, "beta"
require 'capistrano/ext/multistage'

set :application, "mdnapp"
set :scm, :git
set :repository,  "git://github.com/scervera/mdn.git"
# server "localhost", :web, :app, :db, :primary => true
#ssh_options[:port] = 2222
ssh_options[:port] = 22
#ssh_options[:keys] = "~/.vagrant.d/insecure_private_key"
set :user, "adm1n"
set :group, "adm1n"
set :deploy_to, "/var/mdnapp"
set :use_sudo, false
set :deploy_via, :copy
set :copy_strategy, :export
set :shared_children, shared_children + %w{public/uploads}

namespace :deploy do
  task :start do ; end
  task :stop do ; end

  desc "Copy the database.yml file into the latest release"
  task :copy_in_database_yml do
    run "cp #{shared_path}/config/database.yml #{latest_release}/config/"
  end
  desc "Create symlink from public folder to current/public"
  task :symlink_to_public do
    run "ln -sf #{current_path}/public/ #{deploy_to}"
  end
  
  desc "Restart the application"
  task :restart, :roles => :app, :except => { :no_release => true } do
    run "#{try_sudo} touch #{File.join(latest_release,'tmp','restart.txt')}"
  end
#  desc "Delete default web site"
#  task :rm_default_site do
#    run "#{try_sudo} rm /etc/apache2/sites-enabled/000-default"
#  end
end
before "deploy:assets:precompile", "deploy:copy_in_database_yml"
after "deploy:update_code","deploy:copy_in_database_yml", "deploy:symlink_to_public", "deploy:restart"
#after "deploy:setup", "deploy:rm_default_site"
