class Article < ApplicationRecord
  binnacle_signal on: [:create, :update, :destroy]
end
