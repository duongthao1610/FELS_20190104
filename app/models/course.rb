class Course < ApplicationRecord
  has_many :words
  has_many :lessons, dependent: :destroy

  scope :with_lessons, -> {Course.includes :lessons}
  delegate :size, to: :words, prefix: true

  def count_users
    lessons.pluck(:user_id).uniq.size
  end
end
