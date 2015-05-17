class RsvpsController < ApplicationController
 def new
   @rsvp = Rsvp.new
 end

 def create
   @rsvp = Rsvp.new(rsvp_params)
   if @rsvp.save
     redirect_to new_rsvp_url, flash: :success
   else
     flash_now!(:error)
     render('new')
   end
 end

 private

 def rsvp_params
   params.require(:rsvp).permit(:attending, :meal_choice_id, :dietary_restrictions, :name)
 end

end
