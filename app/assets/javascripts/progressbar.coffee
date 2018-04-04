$(document).ready ->
  $('.port-item').click ->
    $('.collapse').collapse 'hide'
    return
  $('.html').animate { width: '70%' }, 2000
  $('.css').animate { width: '70%' }, 2000
  $('.js').animate { width: '40%' }, 2000
  $('.ruby').animate { width: '50%' }, 2000
  $('.rails').animate { width: '60%' }, 2000
return
