require 'rails_helper'

RSpec.describe User, type: :model do
  
  context 'with a single user' do
    before(:each) do
      @user = User.create(email: 'test@test.com', password: 'password' )
    end

  describe '#has_signed_in?' do
    it 'returns true if the sign_in_count > 0' do
      @user.update(sign_in_count: 1)
      expect(@user.has_signed_in?).to eq(true)
    end

    it 'returns false if the sign_in_count == 0' do
      expect(@user.has_signed_in?).to eq(false)
    end
  end
  end
end