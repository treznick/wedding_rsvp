ActiveAdmin.register_page "Dashboard" do

  menu priority: 1, label: proc{ I18n.t("active_admin.dashboard") }

  content title: proc{ I18n.t("active_admin.dashboard") } do
    columns do
      column do
        panel "RSVP Count" do
          span Rsvp.count
        end
        panel "Recent RSVPs" do
          ul do
            Rsvp.last(5).reverse.map do |rsvp|
              li link_to(rsvp.name, admin_rsvp_path(rsvp))
            end
          end
        end
      end
      column do
        panel "Attending" do
          ul do
            li "Count: #{Rsvp.attending.count}"
            li "Percent: #{ ((Rsvp.attending.count.to_f / Rsvp.count.to_f) * 100).round(2)} %"
          end
        end
        panel "Not Attending" do
          ul do
            li "Count: #{Rsvp.not_attending.count}"
            li "Percent: #{ ((Rsvp.not_attending.count.to_f / Rsvp.count.to_f) * 100).round(2)} %"
          end
        end
      end
      column do
        panel "Beef Count" do
          span Rsvp.beef.count
        end
        panel "Fish Count" do
          span Rsvp.fish.count
        end
        panel "Vegetarian Count" do
          span Rsvp.vegetarian.count
        end
        panel "Other Count" do
          span Rsvp.other.count
        end
      end
    end
    # Here is an example of a simple dashboard with columns and panels.
    #
    # columns do
    #   column do
    #     panel "Recent Posts" do
    #       ul do
    #         Post.recent(5).map do |post|
    #           li link_to(post.title, admin_post_path(post))
    #         end
    #       end
    #     end
    #   end

    #   column do
    #     panel "Info" do
    #       para "Welcome to ActiveAdmin."
    #     end
    #   end
    # end
  end # content
end
