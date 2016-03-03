class Article < ActiveRecord::Base
  binnacle_signal on: [:create, :update, :destroy]
end
