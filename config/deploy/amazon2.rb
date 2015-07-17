server "amazon2", :web, :app, :db, :primary => true
ssh_options[:keys] = ["~/.ssh/amazon_ec2_key.pem"]