$(document).ready(function () {
  $("input[name='rsvp[attending]']").click(function () {
    if($(this).attr("value") == "false") {
      $("input[name='rsvp[meal_choice_id]']").addClass("disabled").prop('checked', false);
    } else {
      $("input[name='rsvp[meal_choice_id]']").removeClass("disabled");
    }
  });
});
