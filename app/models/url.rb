class Url < ActiveRecord::Base
  attr_accessible :original, :shortened

  has_many :visits

  validates :shortened, :uniqueness => { :case_sensitive => false }

  delegate :count, :to => :visits, :prefix => true

  before_create :fix_url, :create_shortened_hash

  private

  def create_shortened_hash
    self.shortened = (('a'..'z').to_a + ('A'..'Z').to_a + ('0'..'9').to_a).shuffle[0..5].join # if self.shortened.empty?
  end

  def fix_url
    unless self.original =~ /^http:\/\// || self.original =~ /^https:\/\//
      self.original = "http://#{original}"
    end
  end

end
