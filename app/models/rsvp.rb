class Rsvp < ActiveRecord::Base
  belongs_to :meal_choice

  validates :name, presence: true
  validates :meal_choice, presence: true, if: Proc.new { |rsvp| rsvp.attending? }
  validates :attending, inclusion: [true, false]

  scope :attending, -> { where(attending: true) }
  scope :not_attending, -> { where(attending: false) }

  scope :beef, -> { where(meal_choice_id: MealChoice::BEEF) }
  scope :fish, -> { where(meal_choice_id: MealChoice::FISH) }
  scope :vegetarian, -> { where(meal_choice_id: MealChoice::VEGETARIAN) }
  scope :other, -> { where(meal_choice_id: MealChoice::OTHER) }
end
