class Lesson < ApplicationRecord
  belongs_to :course
  belongs_to :user
  has_many :lesson_answers, dependent: :destroy
  has_many :word_answers, through: :lesson_answers

  delegate :size, to: :lesson_answers, prefix: true
  accepts_nested_attributes_for :lesson_answers,
    reject_if: lambda { |a| a[:id].blank? }, :allow_destroy => true
end
