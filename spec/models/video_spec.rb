require 'rails_helper'

RSpec.describe Video, type: :model do
  before(:all) do
     @user = create(:user)
  end
  context 'Video should be valid' do
    it 'when all video params are provided' do
      video = build(:video, user_id: @user.id)
      expect(video.valid?).to be true
    end
  end
end
