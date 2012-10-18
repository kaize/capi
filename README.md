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

To invoke same rake task on remote server execute follow command
`cap capi:task_invoke`. Example:

    cap capi:task_invoke TASK="db:seed"
