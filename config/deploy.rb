lock '3.4.0'

set :application, 'vocat_docs'
set :repo_url, 'git@github.com:castiron/vocat-docs.git'
set :use_sudo, false
set :build_dir, "build"
set :deploy_to, "/home/vocat_docs/#{fetch(:application)}"
set :scm, :git
set :format, :pretty
set :log_level, :debug
set :pty, true
set :linked_files, []
set :linked_dirs, []
set :keep_releases, 5


namespace :deploy do

  desc 'build and deploy middleman site'
  task :middleman do
    run_locally do
      execute "middleman build"
    end
    on roles(:app), in: :sequence do |host|
      upload! "#{fetch(:build_dir)}", "#{fetch(:deploy_to)}/current/build", recursive: true
    end
  end

  after :publishing, :middleman

end
