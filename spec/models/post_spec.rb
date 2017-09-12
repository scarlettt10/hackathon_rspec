require 'rails_helper'

RSpec.describe Post, type: :model do
  
  before(:each) do
    @user = User.create(email: 'test@test.com', password: 'password' )
    @post = Post.create(content: 'new post', title: 'new', user_id: 1)
  end
  
  describe '#have_post?' do
    it 'returns true if the post_count > 0' do
      expect(@post.have_post?).to eq(true)
    end
  end
end
