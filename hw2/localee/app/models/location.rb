class Location < ActiveRecord::Base
	attr_reader :custom_unique_id

  validates :name, :presence => true
  validates :latitude, :presence => true
  validates :longitude, :presence => true
	validates_uniqueness_of :latitude, :scope => :longitude

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
	
	def hash
    custom_unique_id.hash
  end
	
	def eql?(comparee)
    self == comparee
  end

	def ==(comparee)
    self.custom_unique_id == comparee.custom_unique_id
  end
end
