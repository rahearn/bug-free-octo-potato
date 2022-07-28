Rails.application.config.middleware.use OmniAuth::Builder do
  ssl = if Rails.env.development?
    {verify: false}
  end
  provider :github, Rails.application.credentials.github[:key], Rails.application.credentials.github[:secret], client_options: {ssl: ssl}
end
