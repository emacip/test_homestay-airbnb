$(document).ready ->

  # Currently I am using the gem datetimepicker-rails for manage everything arround the dates.
  # So I dont need validation, I only do this for the task.

  $('#booking_end_date').on "change", (e) ->
    if $('#booking_start_date').val() == "" or $('#booking_end_date').val() > $('#booking_start_date').val()
      alert 'Please select a correct start date'

