class Cocktail < ApplicationRecord

  # belongs_to :user
belongs_to :user, optional: true
has_many :comments
end
