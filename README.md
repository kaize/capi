# Capi

## Summary

Capistrano tasks

## Installing

Add this to your `Gemfile`:

    gem "capi"

## Capfile

    require 'capi/unicorn'
    require 'capi/resque'
    require 'capi/capi'

## Using

For example.
Add this to you `config/deploy.rb` to restart unicorn after deploy:
    
    after "deploy:restart", "unicorn:restart"

In order to specify custom location of unicorn config and pid files
you should set `unicorn_config` and `unicorn_pid_file` capistrano
variables in your `deploy.rb`. For example:

```ruby
set :unicorn_config, "#{deploy_to}/current/config/unicorn/test_api.rb"
set :unicorn_pid_file, ".../custom_location/unicorn.pid"
```

To invoke same rake task on remote server execute follow command
`cap capi:task_invoke`. Example:

    cap capi:task_invoke TASK="db:seed"
