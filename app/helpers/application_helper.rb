module ApplicationHelper
  def host
    Rails.env.development? ? 'http://localhost:5000' : 'https://binnacle.io'
  end

  def application_log
    "#{host}/accounts/#{ENV['BINNACLE_ACCT_ID']}/apps/#{ENV['BINNACLE_APP_ID']}/log"
  end

  def logging_context_log
    "#{host}/accounts/#{ENV['BINNACLE_ACCT_ID']}/apps/#{ENV['BINNACLE_APP_ID']}/contexts/#{ENV['BINNACLE_APP_LOG_CTX_ID']}/log"
  end

  def error_context_log
    "#{host}/accounts/#{ENV['BINNACLE_ACCT_ID']}/apps/#{ENV['BINNACLE_APP_ID']}/contexts/#{ENV['BINNACLE_APP_ERR_CTX_ID']}"
  end

  def edit_app
    "#{host}/accounts/#{ENV['BINNACLE_ACCT_ID']}/apps/#{ENV['BINNACLE_APP_ID']}/edit"
  end

end
