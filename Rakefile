# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require_relative "config/application"

Rails.application.load_tasks

if Rails.application.config.api_docs
    require 'grape-swagger/rake/oapi_tasks'
    GrapeSwagger::Rake::OapiTasks.new('::API::V1::Base')
end