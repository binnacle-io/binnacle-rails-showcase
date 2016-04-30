module ApplicationHelper
  def host
    Rails.env.development? ? 'http://localhost:5000' : 'https://binnacle.io'
  end

  def application_log
    if ENV['BINNACLE_ACCT_ID'] && ENV['BINNACLE_APP_ID']
      "#{host}/accounts/#{ENV['BINNACLE_ACCT_ID']}/apps/#{ENV['BINNACLE_APP_ID']}/log"
    else
      nil
    end
  end

  def logging_context_log
    if ENV['BINNACLE_ACCT_ID'] && ENV['BINNACLE_APP_ID'] && ENV['BINNACLE_APP_LOG_CTX_ID']
      "#{host}/accounts/#{ENV['BINNACLE_ACCT_ID']}/apps/#{ENV['BINNACLE_APP_ID']}/contexts/#{ENV['BINNACLE_APP_LOG_CTX_ID']}/log"
    else
      nil
    end
  end

  def error_context_log
    if ENV['BINNACLE_ACCT_ID'] && ENV['BINNACLE_APP_ID'] && ENV['BINNACLE_APP_ERR_CTX_ID']
      "#{host}/accounts/#{ENV['BINNACLE_ACCT_ID']}/apps/#{ENV['BINNACLE_APP_ID']}/contexts/#{ENV['BINNACLE_APP_ERR_CTX_ID']}"
    else
      nil
    end
  end

  def edit_app
    if ENV['BINNACLE_ACCT_ID'] && {ENV['BINNACLE_APP_ID']
      "#{host}/accounts/#{ENV['BINNACLE_ACCT_ID']}/apps/#{ENV['BINNACLE_APP_ID']}/edit"
    else
      nil
    end
  end

end
