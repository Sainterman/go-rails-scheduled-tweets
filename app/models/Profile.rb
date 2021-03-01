class Profile < ApplicationRecord
  has_many :socials, dependent: :destroy
  accepts_nested_attributes_for :socials, allow_destroy: true
  has_one_attached :avatar
  
  require 'uri'
  validates :email, presence: true,
                    format: { with: URI::MailTo::EMAIL_REGEXP, message: 'must be a valid email address' },
                    uniqueness: { case_sensitive: false }
  validates :name, presence: true, uniqueness: { case_sensitive: false }, length: { minimum: 2 }
end
