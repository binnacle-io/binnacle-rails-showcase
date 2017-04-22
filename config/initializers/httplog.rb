HttpLog.configure do |config|
  config.logger = Rails.logger
  config.color = {color: :black, background: :light_red}
  config.severity = Logger::Severity::INFO
end
