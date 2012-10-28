
load 'deploy' if respond_to?(:namespace) # cap2 differentiator
Dir['vendor/gems/*/recipes/*.rb','vendor/plugins/*/recipes/*.rb'].each { |plugin| load(plugin) }

load 'config/deploy' # remove this line to skip loading any of the default tasks

#rvm configuration and deployment see https://rvm.io/integration/capistrano/
#before 'deploy:setup', 'rvm:install_rvm'
#before 'deploy:setup', 'rvm:install_ruby'
#before 'deploy', 'rvm:install_ruby'

#set :rvm_ruby_string, 'ruby-1.9.3-p286@mdn_web'
#require "rvm/capistrano"