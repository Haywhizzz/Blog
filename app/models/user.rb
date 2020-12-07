class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :articles, foreign_key: 'author_id', dependent: :destroy
  validates :name, presence: true, length: { in: 3..20 }
  has_many :votes, foreign_key: 'author_id', dependent: :destroy
end
