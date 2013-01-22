require 'bundler/capistrano'
set :application, "mdnapp"
set :scm, :git
set :repository,  "git://github.com/scervera/mdn.git"
server "localhost", :web, :app, :db, :primary => true
ssh_options[:port] = 2222
ssh_options[:keys] = "~/.vagrant.d/insecure_private_key"
set :user, "vagrant"
set :group, "vagrant"
set :deploy_to, "/var/mdnapp"
set :use_sudo, false
set :deploy_via, :copy
set :copy_strategy, :export

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
    #run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
    run "#{try_sudo} touch #{File.join(latest_release,'tmp','restart.txt')}"
  end
end
before "deploy:assets:precompile", "deploy:copy_in_database_yml"
after "deploy:update_code","deploy:copy_in_database_yml", "deploy:symlink_to_public", "deploy:restart"
