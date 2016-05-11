class Toy < ActiveRecord::Base
		validates :name, presence: true
		validates :pieces, presence: true

		belongs_to :box
		belongs_to :age_group

end
