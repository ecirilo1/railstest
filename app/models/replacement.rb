class Replacement < ApplicationRecord
  belongs_to :customer

  validates :description, presence: true
  validates :return_content, presence: true
  validates :tablet_number, presence: true
  validates :customer_id, presence: true
  validates :internal_message, presence: true
  validates :received_date, presence: true
  validates :received_tracking, presence: true
  validates :tested, presence: true
  validates :replacement_number, presence: true
  
end
