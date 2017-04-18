class Listing < ApplicationRecord
  has_many :pylons, dependent: :destroy
end
