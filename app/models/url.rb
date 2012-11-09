class Url < ActiveRecord::Base
  attr_accessible :original, :shortened

  has_many :visits

  delegate :count, :to => :visits, :prefix => true

  before_create :create_shortened_hash, :fix_url

  def create_shortened_hash
    self.shortened = (('a'..'z').to_a + ('A'..'Z').to_a + ('0'..'9').to_a).shuffle[0..5].join
  end

  def fix_url
    unless self.original =~ /^http:\/\//
      self.original = "http://#{original}"
    end
  end

  # def visits_count
  #   visits.count
  # end
end
