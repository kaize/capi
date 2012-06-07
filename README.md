# Capi

## Summary

Capistrano tasks

## Installing

Add this to your `Gemfile`:

    gem "capi"

## Capfile

    require 'capi/unicorn'
    require 'capi/resque'

## Using

For example.
Add this to you `config/deploy.rb` to restart unicorn after deploy:
    
    after "deploy:restart", "unicorn:restart"