class Article < ApplicationRecord
   belongs_to :author, class_name: 'User'
   has_attached_file :image, presence: true
  validates :title, presence: true,  length: {in: 3..20}
  validates :content, presence: true,  length: {maximum: 140}
  validates_attachment_content_type :image, content_type: ['image/jpg', 'image/jpeg', 'image/png']
  scope :by_most_recent, -> {order(created_at: :desc)} 
  @articles = Article.all.by_most_recent
  has_many :categories, through: :relationships
  has_many :relationships, dependent: :destroy


end
