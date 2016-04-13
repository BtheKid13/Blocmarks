# == Schema Information
#
# Table name: bookmarks
#
#  id         :integer          not null, primary key
#  url        :string
#  topic_id   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer
#
# Indexes
#
#  index_bookmarks_on_topic_id  (topic_id)
#  index_bookmarks_on_user_id   (user_id)
#

class Bookmark < ActiveRecord::Base
  #Associations
  belongs_to :topic
  belongs_to :user
  has_many :likes, dependent: :destroy

  scope :personal_bookmarks, -> (user) { where(user: user) }

end
