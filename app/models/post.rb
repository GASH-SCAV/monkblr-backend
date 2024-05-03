class Post < ApplicationRecord
  belongs_to :monk

  def username
    monk.name
  end

  def location
    monk.location
  end
end
