class Customer < ApplicationRecord
  has_many :replacements
  has_many :users

  validates :client_name, presence: true
  validates :teeptrak_id, presence: false

end
