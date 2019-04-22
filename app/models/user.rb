class User < ApplicationRecord
  enum role: %w(Teacher Student)

  has_and_belongs_to_many :courses
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :nick_name, presence: true

  def is?(type) 
    self.role == type
  end

  def fullname()
    return self.first_name + ' ' + self.last_name
  end
end
