class Portfolio < ActiveRecord::Base
  belongs_to :user
  #has_one :portfolio_history
end
