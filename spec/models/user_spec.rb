require 'rails_helper'

RSpec.describe User, type: :model do
  context 'user should be valid' do
    it 'when everything is right' do
      user = build(:user)
      expect(user.valid?).to be true
    end
  end

  context 'user should be invalid' do
    it 'when email is not correct format' do
      user = build(:user, email: 'testuser')
      expect(user.valid?).to be false
    end

    it 'when email is blank' do
      user = build(:user, email: '')
      expect(user.valid?).to be false
    end

    it 'when password is blank' do
      user = build(:user, password: '', password_confirmation: '')
      expect(user.valid?).to be false
    end

    it 'when password and password_confirmation dont match' do
      user = build(:user, password: '2', password_confirmation: '1')
      expect(user.valid?).to be false
    end
  end
end
