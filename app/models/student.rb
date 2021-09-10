class Student < ApplicationRecord
  has_one : Book
  validates_presence_of : name
  validates : address, length: { maximum:  100}
  validates : title
end
end
