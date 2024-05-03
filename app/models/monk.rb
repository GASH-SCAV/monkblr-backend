class Monk < ApplicationRecord
  validates :name, :uniqueness => {:case_sensitive => false}
end
