class SeedMealChoices < ActiveRecord::Migration
  def up
    details = [
      {  name: 'Grilled Flap Meat', description: "served with a cipollini mushroom demi-glace.", reporting_name: 'Flap Meat'},
      {  name: 'Pan Seared Striped Bass', description: "with Sweet 100 Avocado and Corn Salsa.", reporting_name: 'Bass'},
      {  name: 'Summer Vegetable Paella', reporting_name: 'Vegetarian' },
      {  name: 'Other', reporting_name: 'Other' }
    ]

    details.each do |detail_hash|
      MealChoice.create(detail_hash)
    end
  end

  def down
    MealChoice.delete_all
  end
end
