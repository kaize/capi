Capistrano::Configuration.instance(:must_exist).load do
  namespace :capi do

    desc 'invoke rake task. Example: cap capi:task_invoke TASK="db:seed"'
    task :task_invoke  do
      run "cd #{deploy_to}/current && bundle exec rake #{ENV['TASK']} RAILS_ENV=#{rails_env}"
    end

  end
end
