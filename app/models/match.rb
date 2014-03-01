class Match < ActiveRecord::Base
  attr_accessible :name, :game
  has_many :pots
end
