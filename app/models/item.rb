class Item < ActiveRecord::Base
  belongs_to :user_id
  has_many :suppliers, through: :item_suppliers
  has_many :item_suppliers
  has_many :storage_locations, through: :itemstoragelocations
  has_many :itemstoragelocations
  
  validates :name, :current_amount, :min_amount, :max_amount, :purchase_amount, :unit_name, :unit_quantity, :presence => true

end
