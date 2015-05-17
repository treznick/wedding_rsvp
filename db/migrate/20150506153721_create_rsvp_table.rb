class CreateRsvpTable < ActiveRecord::Migration
  def change
    create_table :rsvps do |t|
      t.string :name
      t.boolean :attending
      t.integer :meal_choice
      t.text :dietary_restrictions
      t.timestamps
    end
  end
end
