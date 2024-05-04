class Sanctify < ApplicationRecord
  belongs_to :post, counter_cache: true
  belongs_to :monk
end
