module API
  module V1
    class Base < Grape::API
      use ErrorHandler

      version 'v1', using: :path
      mount API::V1::Resources::Health
      mount API::V1::Resources::Books
      mount API::V1::Resources::Authors

      route :any, '*path' do
        raise API::Exceptions::InvalidOperation,
              "No such route '#{request.path}'"
      end
      
      if Rails.application.config.api_docs
        require 'grape-swagger'

        add_swagger_documentation(
          info: {
            title: 'RAILS_API_BOILERPLATE',
            description: File.read(File.expand_path('README.md', __dir__)),
            contact_name: 'RAILS_API_BOILERPLATE',
            contact_email: 'dev@RAILS_API_BOILERPLATE.com'
          },
          security_definitions: {
            authorization: {
              type: 'apiKey',
              name: 'Authorization',
              in: 'header'
            }
          },
          security: [
            {
              authorization: []
            }
          ],
          host: ''
        )
      end
    end
  end
end
