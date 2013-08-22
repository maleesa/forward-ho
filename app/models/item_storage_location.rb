class ItemStorageLocation < ActiveRecord::Base
  belongs_to :item
  belongs_to :storage_location
end
