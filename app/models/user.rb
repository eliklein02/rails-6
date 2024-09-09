class User < ApplicationRecord
  before_save {self.email = email.downcase}
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :name, presence: true, uniqueness: {case_sensitive: false}, length: {minimum: 3, maximum: 25}
  validates :email, presence: true, length: {maximum: 50}, uniqueness: {case_sensitive: false},  format: {with: VALID_EMAIL_REGEX}
  has_many :articles
  has_secure_password
end
