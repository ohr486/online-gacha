Rails.application.config.middleware.use OmniAuth::Builder do
  provider :twitter,
    #ENV['APP_ID'],
    #ENV['APP_SECRET']
    "1aboLDdMqPfbHbrSAlHw1K4Tr",
    "bxX4YrtS5YfNQAyFfwPNUGsZ76UfG4p53BD9Nu7Qy7M8j1fIEV"
end
