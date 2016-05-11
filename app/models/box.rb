class Box < ActiveRecord::Base
	validates :name, presence: true

	has_many :toys
	belongs_to :location
	belongs_to :age_group

end
