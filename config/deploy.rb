#This will cause bundler to run after deployment, to make sure that Gems are installed after each upload
require "bundler/capistrano"

set :application, "MDN Website"
#set :repository,  "turn2god@turn2god.net:/home/turn2god/git/MDN.git"
#set :repository,  "ssh://git@github.com:scervera/MDN-Website.git"
set :repository,  "file:///opt/git/MDN.git"
set :local_repository, "adm1n@railroad.thecerveras.com:/opt/git/MDN.git"
set:deploy_via,:copy

set :scm, :git
# Or: `accurev`, `bzr`, `cvs`, `darcs`, `git`, `mercurial`, `perforce`, `subversion` or `none`

#this is the location where Capistrano will deploy to on the web server
set :deploy_to, "/home/adm1n/www/mdn/"
set :user, "adm1n"
set :use_sudo, false

#this is necessary to properly connect to the web server
ssh_options[:forward_agent] = true

#SMC - Need this to avoid an error saying that git can't be located
set :scm_command, "/usr/bin/git"
# set :local_scm_command, 

role :web, "railroad.thecerveras.com"                          # Your HTTP server, Apache/etc
role :app, "railroad.thecerveras.com"                          # This may be the same as your `Web` server
role :db,  "railroad.thecerveras.com", :primary => true # This is where Rails migrations will run
# role :db,  "your slave db-server here"

#SMC You need to tell cap the branch to checkout during deployment:
set :branch, "master"

# In most cases you want to use this option, otherwise each deploy will do a full repository clone every time.
set :deploy_via, :remote_cache

# if you're still using the script/reaper helper you will need
# these http://github.com/rails/irs_process_scripts

# If you are using Passenger mod_rails uncomment this:
 namespace :deploy do
   task :start do ; end
   task :stop do ; end
   task :restart, :roles => :app, :except => { :no_release => true } do
     run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
   end
 end