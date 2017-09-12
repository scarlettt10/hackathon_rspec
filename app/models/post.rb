class Post < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :destroy

  def have_post?
   if self.content
    return true
   end
  end
end
