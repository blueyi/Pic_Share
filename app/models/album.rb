class Album < ActiveRecord::Base
  belongs_to :user
  has_many :album_pics
  accepts_nested_attributes_for :album_pics
  validates :user_id, presence: true
  validates :content, presence:true, length: { maximum: 260 }
  default_scope -> { order('created_at DESC') }
end
