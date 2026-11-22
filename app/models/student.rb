class Student < ApplicationRecord
  validates :name, presence: true

  belongs_to :group
  has_many :lessons, through: :group
end
