class Course < ApplicationRecord
  has_and_belongs_to_many :users

  validates :name, presence: true
  validates :description, presence: true
  validates :student_amount, presence: true

  scope :having_date_between, ->(start_date, end_date) { where(date: start_date..end_date) }
  scope :having_same_date, ->(start_date) { where(date: start_date) }
end
