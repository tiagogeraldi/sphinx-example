$('#search_term').bind 'keyup', 'keydown', ->
  $(this).closest('form').submit()
  $('search-result').html('Loading...')