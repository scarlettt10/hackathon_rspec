require 'rails_helper'

RSpec.describe Post, type: :model do
  
  before(:each) do
    @post = Post.create( title: 'new', content: 'new post' )
  end
  
  describe '#have_post?' do

    it 'returns true if the post_count > 0' do
      @post.update(post_count: 1)
      expect(@post.have_post?).to eq(true)
    end

    it 'returns false if the post_count == 0' do
      expect(@post.have_post?).to eq(false)
    end
  end
end
