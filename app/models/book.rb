class Book < ApplicationRecord
  belongs_to:Student
  validates_presence_of : title
  validates : author, length: { maximum: 20 }
  validates : description, length: { maximum: 100 }
  validates : details, length: { maximum: 500 }
end
