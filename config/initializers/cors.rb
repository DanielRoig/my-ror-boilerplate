Rails.application.config.middleware.insert_before 0, Rack::Cors do
    origins = []
    origins << 'localhost:8080' if Rails.env.development?
  
    allow do
      origins origins
      resource '*', headers: :any, methods: :any, credentials: true
    end
end
