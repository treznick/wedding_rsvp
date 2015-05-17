class CreateMealChoices < ActiveRecord::Migration
  def change
    create_table :meal_choices do |t|
      t.string :name, null: false
      t.string :description
      t.string :reporting_name, null: false

      t.timestamps
    end

    add_reference :rsvps, :meal_choice, index: true, foreign_key: true
    remove_column :rsvps, :meal_choice, :integer
  end
end
