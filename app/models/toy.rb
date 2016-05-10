class Toy < ActiveRecord::Base
		validates :name, presence: true
		validates :pieces, presence: true

end
