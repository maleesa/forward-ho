class Task < ActiveRecord::Base
  belongs_to :user_id
  belongs_to :storage_location_id

  validates :description, :presence => true

  # attr_accessible :description
end
