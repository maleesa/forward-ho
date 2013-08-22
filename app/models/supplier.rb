class Supplier < ActiveRecord::Base
	has_many :items, through: :item_suppliers
	has_many :item_suppliers
	validates :name, :presence => true

	# attr_accessible :primary, :secondary, :name
end
