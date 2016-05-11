class Location < ActiveRecord::Base
	validates :branch_name, presence:true
	validates :contact_name, presence:true
end
