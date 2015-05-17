class Rsvp < ActiveRecord::Base
  belongs_to :meal_choice

  validates :name, :attending, :meal_choice, presence: true
  validates :attending, inclusion: { in: [true, false] }
end
