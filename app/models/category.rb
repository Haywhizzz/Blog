class Category < ApplicationRecord
    has_many :relationships, dependent: :destroy
    has_many :articles, through: :relationships 
    

    
end
