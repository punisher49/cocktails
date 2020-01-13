class Comment < ApplicationRecord
  belongs_to :cocktail, optional: true
end
