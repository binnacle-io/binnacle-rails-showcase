# ==============================================================================
# Binnacle Configuration
# ==============================================================================
# Available parameters (preferably configure via ENV):
# ==============================================================================
# - url:         The Binnacle Endpoint URL (BINNACLE_URL)
# - logging_channel: The application logger Binnacle Channel (BINNACLE_APP_LOG_CHANNEL)
# - error_channel:   The application error Binnacle Channel (BINNACLE_APP_ERR_CHANNEL)
# - api_key:     An approved publisher API key for the App (BINNACLE_API_KEY)
# - api_secret:  The API secret for the given API key (BINNACLE_API_SECRET)
# - intercept_rails_logging: Redirect rails logging to logging_channel (BINNACLE_RAILS_LOG)
# - report_exceptions: Trap exceptions are log them to error_channel (BINNACLE_REPORT_EXCEPTIONS)
# ==============================================================================
Binnacle.configure do |config|
  config.intercept_rails_logging = true
  config.report_exceptions = true
end
