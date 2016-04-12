class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  #------Relationships
  has_many :topics
  has_many :bookmarks
  has_many :likes, dependent: :destroy

  #------Methods

  def liked(bookmark)
    likes.where(bookmark_id: bookmark.id).first
  end
end
