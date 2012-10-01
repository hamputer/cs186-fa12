class Location < ActiveRecord::Base
  validates :name, :presence => true
  validates :latitude, :presence => true, :uniqueness => true
  validates :longitude, :presence => true, :uniqueness => true

	has_many :posts
	has_and_belongs_to_many :users

	def to_hash
    {
      :id => self.id,
      :name => self.name,
      :latitude => self.latitude,
			:longitude => self.longitude
    }
  end
end
