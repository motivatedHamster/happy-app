# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.

# The below code gratuitously yoinked from:
# https://github.com/michellehyu/happy-app/blob/57898cbd88e629695c59080f76961bcd504e8013/app/assets/javascripts/happy.coffee

$ ->
  $("#btn-rand-joke").click ->
    $.ajax(url: "/home/random_joke").done (payload) ->
      $("body").html(payload)
      
  $("#btn-rand-quote").click ->
    $.ajax(url: "/home/random_quote").done (payload) ->
      $("body").html(payload)
      