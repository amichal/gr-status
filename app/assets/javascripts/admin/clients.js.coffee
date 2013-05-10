jQuery ->
  $('#client_list').sortable(
    axis: 'y'
    update: ->
      $.post($(this).data('update-url'), $(this).sortable('serialize'))
    );
  $('#web_site_list').sortable(
    axis: 'y'
    items: "> .website_edit"
    handle: '.handle'
    update: ->
      $.post($(this).data('update-url'), $(this).sortable('serialize'))
    );