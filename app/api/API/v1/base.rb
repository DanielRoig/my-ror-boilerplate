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
    end
  end
end
