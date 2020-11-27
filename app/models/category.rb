class Category < ApplicationRecord
  has_many :relationships, dependent: :destroy
  has_many :articles, through: :relationships
  validates :name, presence: true, length: { in: 3..20 }
end
