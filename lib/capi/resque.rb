Capistrano::Configuration.instance(:must_exist).load do
  after "deploy:restart", "unicorn:restart"
  namespace :resque do

    desc 'resque stop'
    task :stop  do
      run "kill -s QUIT `cat #{deploy_to}/shared/pids/resque_worker_QUEUE.pid`"
    end

  end
end
