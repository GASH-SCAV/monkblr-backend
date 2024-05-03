class Monk < ApplicationRecord
  validates :name, :uniqueness => {:case_sensitive => false}
  has_many :posts
end
