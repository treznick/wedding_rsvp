class MealChoice < ActiveRecord::Base
  BEEF = 1
  FISH = 2
  VEGETARIAN = 3
  OTHER = 4
  has_many :rsvps
end
