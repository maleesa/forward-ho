class StorageLocation < ActiveRecord::Base
	has_many :tasks
	has_many :items, through: :itemstoragelocations
	has_many :itemstoragelocations

	validates :name, :presence => true
end
