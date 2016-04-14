class CandidatesController < ApplicationController

  respond_to :js, except: :index

  def index
    @candidates = Candidate.all
  end

  def vote
    candidate = Candidate.find(params[:id])
    candidate.liked_by current_user
    votes = Candidate.all.map { |c| [c.name, c.votes_for.size] }

    client = Binnacle::Client.new(ENV['BINNACLE_API_KEY'], ENV['BINNACLE_API_SECRET'])
    client.signal_asynch(ENV['BINNACLE_VOTING_CTX'], 'VOTES',
                                               current_user.id,
                                               '',
                                               'INFO',
                                               [],
                                               votes)
  end

  def reset_votes_for
    current_user.votes.delete_all

    votes = Candidate.all.map { |c| [c.name, c.votes_for.size] }

    client = Binnacle::Client.new(ENV['BINNACLE_API_KEY'], ENV['BINNACLE_API_SECRET'])
    client.signal_asynch(ENV['BINNACLE_VOTING_CTX'], 'VOTES',
                                               current_user.id,
                                               '',
                                               'INFO',
                                               [],
                                               votes)
  end

end
