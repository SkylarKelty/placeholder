# Multi Stage Deploy
require 'capistrano/ext/multistage'
set :stages, %w(staging)
set :default_stage, "staging"

# App info
set :application, "Placeholder App"
set :repository,  "git@github.com:SkylarKelty/placeholder.git"
set :scm, :git
set :copy_exclude, ["Capfile", "config", "LICENSE", "README.md"]

# Deploy info
set :user, "wwwdeploy"
set :use_sudo, false

# Clean up old releases on each deploy
set :keep_releases, 3
after "deploy:restart", "deploy:cleanup"
