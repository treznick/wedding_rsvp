ActiveAdmin.register Rsvp do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  # permit_params do
  #   permitted = [:permitted, :attributes]
  #   permitted << :other if resource.something?
  #   permitted
  # end
  index do
    selectable_column
    column :id
    column :name
    column :attending
    column :dietary_restrictions
    column "Meal Choice" do |rsvp|
      if rsvp.attending
        rsvp.meal_choice.reporting_name
      end
    end
  end

  csv do
    column :name
    column :attending
    column :dietary_restrictions
    column "Meal Choice" do |rsvp|
      if rsvp.attending
        rsvp.meal_choice.reporting_name
      end
    end
    column :created_at
    column :updated_at
  end


end
