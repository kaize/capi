Capistrano::Configuration.instance(:must_exist).load do
  namespace :unicorn do
    desc 'unicorn start'
    task :start do
      config_path = unicorn_config || "#{deploy_to}/current/config/unicorn.rb"
      run "cd #{deploy_to}/current && bundle exec unicorn_rails -c #{config_path} -E #{rails_env} -D"
    end

    desc 'unicorn stop'
    task :stop do
      pid_file = unicorn_pid_file || "#{deploy_to}/shared/pids/unicorn.pid"
      run "kill -QUIT `cat #{pid_file}`"
    end

    desc 'unicorn restart'
    task :restart do
      stop rescue nil
      start
    end
  end
end
