$('#search_term').bind 'keyup', ->
  $('.search-result').html('Loading...')
  setTimeout ( ->
    $('#search_term').closest('form').submit()
  ), 800
