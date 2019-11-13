class Video < ApplicationRecord
  belongs_to :user

  validates :title, presence: true
  validates :user_id, presence: true
  validates :embed_code, presence: true
  validates :description, presence: true
end
