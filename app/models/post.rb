class Post < ActiveRecord::Base
	validates :title, presence: true
  validates :content, presence: true
  validates :author, presence: true

  has_many :posts_tags, dependent: :destroy
  has_many :tags, through: :posts_tags

end
