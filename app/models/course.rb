class Course < ApplicationRecord
  mount_uploader :image, PictureUploader
  has_many :words
  has_many :lessons, dependent: :destroy
  scope :with_users, -> {Course.includes(:lessons).group(:course_id)
    .count(:user_id)}
  delegate :size, to: :words, prefix: true

  def search_data
    {
      name: name,
      description: description
    }
  end
end
