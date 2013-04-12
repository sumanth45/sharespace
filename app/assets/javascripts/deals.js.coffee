# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$ ->
  alert "Hi"
  if $("#date_from_field").length > 0
    new JsDatePick({useMode:2, target:"date_from_field", dateFormat:"%Y-%m-%d"});
    new JsDatePick({useMode:2, target:"date_to_field", dateFormat:"%Y-%m-%d"});