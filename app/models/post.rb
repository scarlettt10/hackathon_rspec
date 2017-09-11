class Post < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :destroy

  def have_post?
    post_count > 0
  end
end
