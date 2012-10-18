Capistrano::Configuration.instance(:must_exist).load do
  namespace :capi do

    desc 'invoke rake task. Example: cap capi:task_invoke TASK="db:seed"'
    task :task_invoke  do
      run "cd #{deploy_to}/current && RAILS_ENV=#{rails_env} bundle exec rake #{ENV['TASK']}"
    end

  end
end
