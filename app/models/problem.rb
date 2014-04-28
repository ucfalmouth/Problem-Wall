class Problem < ActiveRecord::Base
  acts_as_votable
  belongs_to :user
  has_many :solutions
  default_scope { order("cached_votes_score DESC")}
end
