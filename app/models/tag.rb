class Tag < ActiveRecord::Base
  validates :name, presence: true

  has_many :posts_tags, dependent: :destroy
  has_many :posts, through: :posts_tag
end


