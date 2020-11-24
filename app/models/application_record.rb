class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
  scope :by_most_recent, -> {order(created_at: :desc)} 
end
