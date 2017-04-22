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

  def logging_channel_log
    if ENV['BINNACLE_ACCT_ID'] && ENV['BINNACLE_APP_ID'] && ENV['BINNACLE_APP_LOG_CHANNEL_ID']
      "#{host}/accounts/#{ENV['BINNACLE_ACCT_ID']}/apps/#{ENV['BINNACLE_APP_ID']}/channels/#{ENV['BINNACLE_APP_LOG_CHANNEL_ID']}/log"
    else
      nil
    end
  end

  def error_channel_log
    if ENV['BINNACLE_ACCT_ID'] && ENV['BINNACLE_APP_ID'] && ENV['BINNACLE_APP_ERR_CHANNEL_ID']
      "#{host}/accounts/#{ENV['BINNACLE_ACCT_ID']}/apps/#{ENV['BINNACLE_APP_ID']}/channels/#{ENV['BINNACLE_APP_ERR_CHANNEL_ID']}"
    else
      nil
    end
  end

  def edit_app
    if ENV['BINNACLE_ACCT_ID'] && ENV['BINNACLE_APP_ID']
      "#{host}/accounts/#{ENV['BINNACLE_ACCT_ID']}/apps/#{ENV['BINNACLE_APP_ID']}/edit"
    else
      nil
    end
  end

end
