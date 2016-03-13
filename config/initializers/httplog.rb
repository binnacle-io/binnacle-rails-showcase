HttpLog.options[:logger] = Rails.logger
HttpLog.options[:color] = {color: :black, background: :light_red}
HttpLog.options[:severity] = Logger::Severity::INFO
