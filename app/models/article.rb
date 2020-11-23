class Article < ApplicationRecord
   belongs_to :author, class_name: 'User'
   has_attached_file :image, presence: true
  validates :title, presence: true,  length: {in: 3..20}
  validates :content, presence: true,  length: {maximum: 140}
  validates_attachment_content_type :image, content_type: ['image/jpg', 'image/jpeg', 'image/png']

end
