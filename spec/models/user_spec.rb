require 'rails_helper'

RSpec.describe User, type: :model do
  describe User do
    before do
      @user = FactoryBot.build(:user)
    end
    describe 'New user registration' do
      context 'When new registration is successful' do
        it 'email, password and password_Being able to register if confirmation exists' do
          expect(@user).to be_valid
        end
        it 'You can register if your password is 6 characters or more' do
          @user.password = '123456'
          @user.password_confirmation = '123456'
          expect(@user).to be_valid
        end
      end
      context 'user model validation' do
        it 'must have an email' do
          user = User.new(password: 'password').save
          expect(user).to eq(false)
        end
        it 'must have a password' do
          user = User.new(email: 'email').save
          expect(user).to eq(false)
        end
      end
    end
  end
end
