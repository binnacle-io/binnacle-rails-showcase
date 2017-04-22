class WebpushController < ApplicationController
  def index; end

  def trigger
    client = Binnacle::Client.new(ENV['BINNACLE_API_KEY'], ENV['BINNACLE_API_SECRET'])
    client.signal_asynch(ENV['BINNACLE_WP_CHANNEL'], 'push_one',
                                               current_user.id,
                                               '',
                                               'INFO',
                                               [],
                                               { user: current_user.name })
  end
end
