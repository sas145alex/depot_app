cart = $('#cart')

if cart.is(':hidden')
  $('#side').animate({'width' : '430px'}, 500)
  cart.show("blind", 500)

cart.html('<%=j render(@cart) %>')

$('#current_item').css({'background-color':'#8f8'})
  .animate({'background-color':'#141'},1000)
