class Group < ApplicationRecord
  validates :name, presence: true

  has_many :students, dependent: :nullify
  has_many :lessons, dependent: :nullify
end
