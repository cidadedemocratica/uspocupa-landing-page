$ ->
  slider = $("#myCarousel").carousel(interval: 5000)
  slider.bind 'slid', ->
    index = $(this).find('div.active').index()
    $(this).find('a').parent().removeClass('active')
      .eq(index).addClass('active')

  $("#myCarousel a").click (e) ->
    index = $(this).parent().index()
    slider.carousel(index)
    e.preventDefault()
