class Post < ActiveRecord::Base
  validates :text, :presence => true
  validates :user_id, :presence => true
  validates :location_id, :presence => true

	belongs_to :user
	belongs_to :location

	def to_hash
    {
      :author_id => self.user_id,
      :author => User.find(self.user_id).to_hash[:name],
			:text => self.text,
      :created_at => self.created_at,
			:location => Location.find(self.location_id).to_hash
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
