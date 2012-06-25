Capistrano::Configuration.instance(:must_exist).load do
  namespace :thin do

    desc 'thin start'
    task :start do
      run "cd #{deploy_to}/current && bundle exec thin start -C #{deploy_to}/current/config/thin.yml -P #{deploy_to}/shared/pids/thin.pid -e #{rails_env} -d"
    end

    desc 'thin stop'
    task :stop  do
      run "kill -QUIT `cat #{deploy_to}/shared/pids/thin.pid`"
    end

    desc 'thin restart'
    task :restart do
      stop rescue nil
      start
    end


  end
end
