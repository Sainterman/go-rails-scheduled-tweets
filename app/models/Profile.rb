class Profile < ApplicationRecord
  has_many :socials, dependent: :destroy
  accepts_nested_attributes_for :socials, allow_destroy: true

  require 'uri'
  validates :email, presence: true,
                    format: { with: URI::MailTo::EMAIL_REGEXP, message: 'must be a valid email address' }
  validates :name, presence: true, length: { minimum: 2 }
end
