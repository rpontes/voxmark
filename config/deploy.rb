# APP SETTINGS
set :application, "voxmark"
set :ip_address , "50.22.221.95"

# GIT SETTINGS
set :scm, :git
set :repository,  "git@github.com:rpontes/voxmark.git"
set :branch, "master"
set :deploy_via, :remote_cache

# SSH SETTINGS
set :user , "rails"
set :deploy_to, "/home/rails/#{application}"
set :shared_directory, "#{deploy_to}/shared"
set :use_sudo, false
set :group_writable, false
default_run_options[:pty] = true

# ROLES
role :app, ip_address
role :web, ip_address
role :db,  ip_address, :primary => true

# HOOKS
after 'deploy:update_code' do
  db.symlink
  assets.symlink
#  cron.update
end

# TASKS
namespace :deploy do
  # Restart passenger on deploy
  desc "Restarting mod_rails with restart.txt"
  task :restart, :roles => :app, :except => { :no_release => true } do
    run "touch #{current_path}/tmp/restart.txt"
  end

  [:start, :stop].each do |t|
    desc "#{t} task is a no-op with mod_rails"
    task t, :roles => :app do ; end
  end
end

namespace :db do
  desc "link database.yml"
  task :symlink do
    run "ln -s #{shared_path}/database.yml #{release_path}/config/database.yml"
  end

  desc "seed database"
  task :seed do
    run "cd #{current_path} && rake db:seed RAILS_ENV=production"
  end
end

namespace :assets do
  task :symlink, :roles => :app do
    assets.create_dir
    run <<-CMD
      rm -rf  #{current_path}/public/system &&
      ln -nfs #{shared_path}/system #{release_path}/public/system
    CMD
  end

  task :create_dir, :roles => :app do
    run "test -d #{shared_path}/system || mkdir -p #{shared_path}/system"
  end
end

namespace :cron do
  desc "Update the crontab file"
  task :update, :roles => :db do
    run "cd #{current_path} && whenever --update-crontab #{application}"
  end
end

