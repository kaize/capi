Capistrano::Configuration.instance(:must_exist).load do
  namespace :unicorn do
    desc 'unicorn start'
    task :start do
      run "cd #{deploy_to}/current && bundle exec unicorn_rails -c #{deploy_to}/current/config/unicorn.rb -E #{rails_env} -D"
    end

    desc 'unicorn stop'
    task :stop do
      run "kill -QUIT `cat #{deploy_to}/shared/pids/unicorn.pid`"
    end

    desc 'unicorn restart'
    task :restart do
      stop rescue nil
      start
    end
  end
end
