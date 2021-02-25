class Social < ApplicationRecord
  belongs_to :profile, optional: true
  validates :name, :link, presence: true
  validates :link, uniqueness: true
end
