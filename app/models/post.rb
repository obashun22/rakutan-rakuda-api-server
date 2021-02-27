class Post < ApplicationRecord
  validates :lecture, presence: true
  validates :teacher, presence: true
  validates :category, presence: true
  validates :year, presence: true, numericality: { only_integer: true }
  validates :term, presence: true
  validates :evaluation, presence: true
  validates :cause, presence: true
  validates :comment, presence: true
end
