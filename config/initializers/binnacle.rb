# ==============================================================================
# Binnacle Configuration
# ==============================================================================
# Available parameters (preferably configure via ENV):
# ==============================================================================
# - url:         The Binnacle Endpoint URL (BINNACLE_URL)
# - logging_ctx: The application logger Binnacle Context (BINNACLE_APP_LOG_CTX)
# - error_ctx:   The application error Binnacle Context (BINNACLE_APP_ERR_CTX)
# - api_key:     An approved publisher API key for the App (BINNACLE_API_KEY)
# - api_secret:  The API secret for the given API key (BINNACLE_API_SECRET)
# - intercept_rails_logging: Redirect rails logging to logging_ctx (BINNACLE_RAILS_LOG)
# - report_exceptions: Trap exceptions are log them to error_ctx (BINNACLE_REPORT_EXCEPTIONS)
# ==============================================================================
Binnacle.configure do |config|
  config.intercept_rails_logging = true
  config.report_exceptions = true
end
