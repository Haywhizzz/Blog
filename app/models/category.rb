class Category < ApplicationRecord
    has_many :articles, through: :relationships 
    has_many :relationships, dependent: :destroy

end
