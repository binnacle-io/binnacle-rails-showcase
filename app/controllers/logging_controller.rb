class LoggingController < ApplicationController
  def index; end

  def info
    Binnacle.logger.info("This is an info message")
    render nothing: true
  end

  def debug
    Binnacle.logger.level = Logger::DEBUG
    Binnacle.logger.debug("This is an debug message")
    Binnacle.logger.level = Logger::INFO
    render nothing: true
  end

  def with_procname
    Binnacle.logger.level = Logger::ERROR
    Binnacle.logger.error('comm_error') { "Can't reach the service endpoint!" }
    Binnacle.logger.level = Logger::INFO
    render nothing: true
  end

  def with_procname_hash
    Binnacle.logger.info(context_id: ENV['BINNACLE_APP_LOG_CTX'], session_id: '8675309', event_name: 'failed_transfer') { 'transfer failed, bad RTN' }
    render nothing: true
  end

  def tagged
    Binnacle.logger.tagged("cart") do
      Binnacle.logger.info "Adding Item 123"
      Binnacle.logger.info "Adding Item 234"
    end
    render nothing: true
  end

  def multi_tagged
    Binnacle.logger.tagged("account", "payments") do
      Binnacle.logger.info 'Added new credit card of type VISA'
      Binnacle.logger.info 'Remove Paypal account'
    end
    render nothing: true
  end
end
