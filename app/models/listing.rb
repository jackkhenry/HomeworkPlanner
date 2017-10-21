class Listing < ApplicationRecord
  belongs_to :user
  has_many :photos
  #必須項目
  validates :homework_type, presence: true
  validates :duedate, presence: true
end
