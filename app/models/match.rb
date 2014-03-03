class Match < ActiveRecord::Base
  has_many :pots
  attr_accessible :name, :game, :pots

  accepts_nested_attributes_for :pots, allow_destroy: true
end
