$(document).on 'ready', ->
  $('#search_term').on 'keyup', ->
    $(this).closest('form').submit()
    $('search-result').html('Loading...')