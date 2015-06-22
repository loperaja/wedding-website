ready = ->
  $scrollDownOffset = $(".scroll-down").offset()
  top =  $("#intro").height() - $(".scroll-down").height() - 20 
  $(".scroll-down").offset({top: top})
  $(".scroll-down").fadeIn(4000) 
  $window = $(window)
  $('section[data-type="background"]').each ->
    # declare the variable to affect the defined data-type
    $scroll = $(this)
    $(window).scroll ->
      # HTML5 proves useful for helping with creating JS functions!
      # also, negative value because we're scrolling upwards                            
      yPos = -($window.scrollTop() / $scroll.data('speed'))
      # background position
      coords = '50% ' + yPos + 'px'
      # move the background
      $scroll.css backgroundPosition: coords
      return
    # end window scroll
    return
  # end section function
  return
# close out script

showText = ->
  #console.log("height = "+$('#intro').height()+" scrollTop = "+$(this).scrollTop())
  if $(this).scrollTop() > $("#intro").height()
   $(".intro-text").fadeIn(500)
  else
   $(".intro-text").fadeOut()  
  
$(document).ready(ready)
$(document).on('page:load', ready)
$(window).on('scroll', showText)
