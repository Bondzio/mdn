require 'bundler/capistrano'
set :stages, %w(beta web dev www1 www2 www.thecerveras.com www1.thecerveras.com sandbox amazon2 cloud1)
set :default_stage, "beta"
require 'capistrano/ext/multistage'

set :application, "mdnapp"
set :scm, :git
set :repository,  "git://github.com/scervera/mdn.git"
# server "localhost", :web, :app, :db, :primary => true

set :ssh_options, { :forward_agent => true }
default_run_options[:pty] = true
ssh_options[:port] = 22
set :user, "adm1n"
set :group, "adm1n"
set :deploy_to, "/var/mdnapp"
set :use_sudo, false
set :deploy_via, :copy
# In most cases you want to use this option, otherwise each deploy will do a full repository clone every time.
#set :deploy_via, :remote_cache
#set :copy_strategy, :export
set :shared_children, shared_children + %w{public/uploads}

#SMC You need to tell cap the branch to checkout during deployment:
set :branch, "master" 
set :keep_releases, 5

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
