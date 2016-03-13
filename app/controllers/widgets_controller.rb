class WidgetsController < ApplicationController

  before_action :initialize_binnacle_chat, only: :chat

  def chat; end

  def arcud
    @articles = Article.all
  end

  def notifications; end
end
