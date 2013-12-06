set :application, "Placeholder App"
set :repository,  "set your repository location here"

set :scm, :git

role :web, "your web-server here"

# Clean up old releases on each deploy
after "deploy:restart", "deploy:cleanup"
