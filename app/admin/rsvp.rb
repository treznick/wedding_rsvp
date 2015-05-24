ActiveAdmin.register Rsvp do

  permit_params :name, :attending, :dietary_restrictions, :meal_choice_id
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
    actions
    column "Comments" do |rsvp|
      ActiveAdmin::Comment.
        where(ActiveAdmin::Comment.arel_table[:resource_type].eq(Rsvp.to_s)).
        where(ActiveAdmin::Comment.arel_table[:resource_id].eq(rsvp.id.to_s)).count
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

  form do |f|
    f.inputs "RSVP Details" do
      f.input :name
      f.input :attending
      f.input :meal_choice_id, as: :radio, collection: MealChoice.all, label: :name
      f.input :dietary_restrictions
    end
    f.actions
  end


end
